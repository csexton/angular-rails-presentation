class Slide
  attr_reader :body, :id

  def self.all
    list_files.each_with_object([]) do |f, slides|
      File.read(f).split("!SLIDE").each do |contents|
        contents.strip!
        slides << self.new(slides.length, contents) unless contents.empty?
      end
    end
  end

  def self.list_files
    Dir[path].sort
  end

  def self.path
    Rails.root.join("slides", "*.md")
  end

  def initialize(index, body)
    @id = index
    build body
  end

  def build(body)
    @body = process_markdown(body).html_safe
  end

  def process_markdown(md)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      space_after_headers: true,
      fenced_code_blocks: true
    )
    markdown.render( preprocess(md) )
  end

  def preprocess(text)
    text.gsub(/!FILE (.*?)(:(\d+)(:(\d+))?)?\n/) do |match|
      md = $~
      filename = md[1]
      from = md[3]
      to = md[5]
      extension = filename.split(/\./)[-1]
      data = File.read(filename).split(/\n/)
      if from
        eor = to ? to.to_i : -1
        data = data[(from.to_i - 1)..(eor - 1)]
      end
      "```#{extension}\n#{data.join("\n")}\n```\n"
    end
  end

end

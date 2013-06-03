class Slide
  attr_reader :body, :id

  def self.all
    a = []
    i = 0
    list_files.each do |f|
      read_file(f).split("!SLIDE").each do |contents|
        contents.strip!
        next if contents.empty?
        a << self.new(i, contents)
        i+=1
      end
    end
    a
  end

  def self.list_files
    Dir[path]
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

  def self.read_file(path)
    File.open(path,"r").read()
  end

  def process_markdown(md)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      space_after_headers: true)
    markdown.render(md)
  end

end

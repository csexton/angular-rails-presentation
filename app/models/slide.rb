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

  def process_markdown(md)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      space_after_headers: true)
    markdown.render(md)
  end

end

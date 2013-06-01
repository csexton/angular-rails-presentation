class Slide
  attr_reader :body, :name, :id

  def self.all
    list_files.each_with_index.map { |f,i| self.new(i, f) }
  end

  def self.list_files
    Dir[path]
  end

  def self.path
    Rails.root.join("slides", "*.md")
  end

  def self.find(number)
    self.new number.to_i, list_files[number.to_i]
  end

  def initialize(index, file)
    @name = File.basename(file)
    @id = index
    build file
  end

  def build(file)
    @body = process_markdown(read_file(file)).html_safe
  end

  def read_file(path)
    File.open(path,"r").read()
  end

  def process_markdown(md)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true)
    markdown.render(md)
  end

end

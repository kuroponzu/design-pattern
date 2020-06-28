require "./builder.rb"

class HtmlBuilder
  include Builder

  def initialize
    @buffer = ""
    @write = ""
    @file_name = ""
  end

  def make_titile(titile:)
    @file_name = titile + ".html"
    write = File.open(file_name, "w")
    write.puts("<html><head><title>#{titile}</title></head><body>")
    write.puts("<h1>#{titile}</h1>")
  end

  def make_string(str:)
    write = File.open(file_name,"a")
    write.puts("<p>#{str}</p>")
  end

  def make_items(items:)
    write = File.open(file_name,"a")
    write.puts("<ul>")
    items.each do |item|
      write.puts("<li>#{item}</li>")
    end
    write.puts("</ul>")
  end

  def close
    write = File.open(file_name,"a")
    write.puts("</body></html>")
  end

  def get_result
    file_name
  end

  attr_accessor :write, :file_name
end

require "../factory/*"

class TablePage < Page

  def initialize(title:, author:)
    super(title: title, author: author)
  end

  def male_html
    buffer = String.new
    buffer.add("<html><head><title>#{title}</title></head>\n")
    buffer.add("<body>\n")
    buffer.add("<h1>#{title}</h1>")
    buffer.add("<table>\n")
    content.each do |c|
      buffer.add(c.male_html)
    end
    buffer.add("</table>\n")
    buffer.add("<hr><address>#{author}</address>")
    buffer.add("</body></html>\n")
    buffer.to_s
  end
end

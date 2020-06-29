require "../factory/*"

class TableLink < Factory
  def table_link(caption:, url:)
    super(caption: caption, url: url)
  end

  def make_html
    "<li><a href=\"#{url}\">#{caption}</a></li>\n"
  end
end

require "../factory/*"

class TableTray < Factory
  
  def initialize(caption:)
      super(caption: caption)
  end

  def make_html
    buffer = String.new
    buffer.add("<td>¥n")
    buffer.add("<table width=\"100%\" border=\"1\">")
    buffer.add("<td bgcolor=\"#cccccc\" align=\"centor\" colspan=\"#{tray.size}\"><b>
                #{caption}</b></td>")
    buffer.add("</tr>¥n")
    buffer.add("<tr>¥n")
    item.each do |i|
      buffer.add(i.make_html)
    end
    buffer.add("</tr></table>¥n")
    buffer.add("</ld>¥n")
    buffer.to_s
  end
end

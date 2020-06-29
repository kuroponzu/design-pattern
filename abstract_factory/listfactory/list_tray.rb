require "../factory/*"

module ListFactory
  class ListTray
    include Tray
    def initialize(caption:)
      super(caption: caption)
    end

    def make_html
      buffer = String.new
      buffer.add("<li>¥n")
      buffer.add(caption + "¥n")
      buffer.add("<ul>¥n")
      tray.each do |t|
        buffer.add(t.make_html)
      end
      buffer.add("</ul>¥n")
      buffer.add("</li>¥n")
    end
  end
end

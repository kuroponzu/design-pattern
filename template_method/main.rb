require "./char_display.rb"
require "./string_display.rb"

class Main
  def run
    d1 = CharDisplay.new(char: "h")
    d2 = StringDisplay.new(string: "hellow_world")
    d3 = StringDisplay.new(string: "こんにちは。")
    d1.display()
    d2.display()
    d3.display()
  end
end

Main.new.run

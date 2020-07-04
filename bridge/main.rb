require "./display.rb"
require "./count_display.rb"
require "./display_impl.rb"
require "./string_display_impl.rb"

class Main
  def self.run
    d1 = Display.new(impl: StringDisplayImpl.new(string: "Hello, japan"))
    d2 = CountDisplay.new(impl: StringDisplayImpl.new(string: "Hello, world"))
    d3 = CountDisplay.new(impl: StringDisplayImpl.new(string: "Hello, world"))
    d1.display
    d2.display
    d3.display
    d3.multi_display(times: 5)
  end
end


Main.run

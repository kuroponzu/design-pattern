require "./display.rb"
require "./count_display.rb"
require "./display_impl.rb"
require "./string_display_impl.rb"
require "./random_display.rb"
require "./increase_display.rb"
require "./char_display_impl.rb"

class Main
  def self.run
    d1 = Display.new(impl: StringDisplayImpl.new(string: "Hello, japan"))
    d2 = CountDisplay.new(impl: StringDisplayImpl.new(string: "Hello, world"))
    d3 = CountDisplay.new(impl: StringDisplayImpl.new(string: "Hello, world"))
    d4 = RandomDisplay.new(impl: StringDisplayImpl.new(string: "Hello, よし！"))
    d5 = IncreaseDisplay.new(impl: CharDisplayImpl.new(head: "<", body: "-", foot: ">"), step: 4)

    d1.display
    d2.display
    d3.display
    d4.display
    d3.multi_display(times: 5)
    d4.random_display(times: 5)
    d5.increase_display(level: 6)

  end
end


Main.run

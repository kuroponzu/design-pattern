require "./display.rb"

class CountDisplay < Display
  def initialize(impl:)
    super(impl: impl)
  end

  def multi_display(times:)
    open
    times.times do |time|
      print
    end
    close
  end
end

require "./display"

class RandomDisplay < Display
  def initialize(impl:)
    super(impl: impl)
  end

  def random_display(times:)
    open
    display_count = rand(1..times)
    display_count.times do |time|
      print
    end
    close
  end
end

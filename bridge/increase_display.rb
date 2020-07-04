class IncreaseDisplay < CountDisplay

  def initialize(impl:, step:)
    super(impl: impl)
    @step = step
  end

  def increase_display(level:)
    count = 0
    level.times do
      multi_display(times: count)
      count = count.to_i + step.to_i
    end
  end

  private
  attr_accessor :step
end

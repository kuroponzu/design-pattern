require "./strategy"
require "./hand"

class WinningStrategy
  include Strategy

  def initialize(seed:)
    @random = rand(seed)
    @won = false
  end

  def next_hand
    if !won
      prev_hand = Hand.get_hand(handvalue: rand(3))
    end
    return prev_hand
  end

  def study(win:)
    won = win
  end

  private
  attr_accessor :random, :won, :prev_hand
end

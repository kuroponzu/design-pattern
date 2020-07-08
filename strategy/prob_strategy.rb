require "./strategy"

class ProbStrategy
  include Strategy

  def initialize(seed:)
    random = rand(seed)
    prev_hand_value = 0
    current_hand_value = 0
  end

  def next_hand
    bet = rand(get_sum(current_hand_value))
    hand_value = 0
    if (bet < history[current_hand_value][0])
      hand_value = 0
    elsif (bet < history[current_hand_value][0] + history[current_hand_value][1])
      hand_value = 1
    else
      hand_value = 2
    end

    prev_hand_value = current_hand_value
    current_hand_value = hand_value
    
    Hand.get_hand(hand_value)
  end

  def get_sum(hv:)
    sum = 0
    3.times do |i|
      sum += history[hv][i]
    end
    
    sum 
  end

  def study(win:)
    if (win)
      history[prev_hand_value][current_hand_value] += 1
    else
      history[prev_hand_value][(current_hand_value + 1) % 3] += 1
      history[prev_hand_value][(current_hand_value + 2) % 3] += 1
    end
  end

  attr_accessor :random, :prev_hand_value, :current_hand_value
end

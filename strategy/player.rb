class Player
  def initialize(name:, strategy:)
    @name = name
    @strategy = strategy
    @wincount = 0
    @losecount = 0
    @gamecount = 0
  end

  def next_hand
    strategy.next_hand
  end

  def win
    strategy.study(true)
    wincount += 1
    gamecount += 1
  end

  def lose
    losecount += 1
    gamecount += 1
  end

  def even
    gamecount += 1
  end

  def to_string
    "[#{name}:#{gamecount}games,#{wincount}win,#{losecount}lose"
  end

  private
  attr_accessor :name, :strategy, :wincount, :losecount, :gamecount
end

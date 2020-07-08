require "./player"
require "./winning_strategy"
require "./prob_strategy"
require "./hand"

class Main
  def self.run(arg1:, arg2:)
    seed1 = arg1
    seed2 = arg2

    player1 = Player.new(name: "Taro", strategy: WinningStrategy.new(seed: seed1))
    player2 = Player.new(name: "Hana", strategy: ProbStrategy.new(seed: seed2))

    10000.times do |i|
      next_hand1 = player1.next_hand
      next_hand2 = player2.next_hand
      if next_hand1.is_stronger_than(h: next_hand2)
        puts "winner1#{player1}"
        player1.win
        player2.lose
      elsif next_hand2.is_stronger_than(h: next_hand1)
        puts "winner2#{player2}"
        player1.lose
        player2.win
      else
        puts "even"
        player1.even
        player2.even
      end
    end
    puts "total result"
    puts player1.to_string
    puts player2.to_string
  end
end

Main.run(arg1: 20,arg2: 30)

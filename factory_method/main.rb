require './id_card_factory.rb'

class Main
  def run
    factory = IDCardFactory.new
    card1 = factory.create(owner: "花子")
    card2 = factory.create(owner: "太郎")
    card3 = factory.create(owner: "浩")
    card1.use
    card2.use
    card3.use
  end
end

Main.new.run

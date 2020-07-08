class Hand

  HANDVALUE_GUE = 0
  HANDVALUE_CHO = 1
  HANDVALUE_PAA = 2
  @@hand = [Hand.new(handvalue: HANDVALUE_GUE),
            Hand.new(handvalue: HANDVALUE_CHO),
            Hand.new(handvalue: HANDVALUE_PAA)
          ]
          
  def initialize(handvalue:)
    @name = ["グー", "チョキ", "パー"]
    @handvalue = handvalue
  end

  def self.get_hand(handvalue:)
    hand[handvalue]
  end

  def is_stronger_than(h:)
    fight(h) == 1
  end

  def is_weeker_than(h:)
    fight(h) == -1
  end

  private

  attr_accessor :handvalue, :hand, :name

  def fight(h:)
    return 0 if self == h
    return 1 if ((self.handvalue + 1) % 3 == h.handvalue )
    return -1
  end

  def to_string
    return name[handvalue]
  end
end

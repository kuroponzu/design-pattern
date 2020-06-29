require "./framework/product.rb"

class UnderlinePen
  include Framework::Product

  def initialize(ulchar:)
    @ulchar = ulchar

  end
end

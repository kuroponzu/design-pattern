require './factory.rb'
require './id_card.rb'

class IDCardFactory
  include Factory

  attr_accessor :owner
  def initialize
    @owner = Array.new
  end

  def create_product(owner:)
    IDCard.new(owner: owner)
  end

  def register_product(product:)
    owner.push(product.get_owner)
  end
end

require './product.rb'

class IDCard
  include Product

  def initialize(owner:)
    @owner = owner
    puts "#{owner}のカードを作ります。"
  end

  def use
    puts "#{owner}のカードを使います。"
  end

  def get_owner
    owner
  end

  private
  attr_reader :owner
end

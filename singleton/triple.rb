require "singleton"

class Triple
  include Singleton
  attr_accessor :id, :triple
  
  def initialize
    puts "インスタンスを作成します。"
    @triple = [0,1,2]
  end

  def get_instance(id:)
    triple[id]
  end

  def to_string
    "[TripleID#{@id}]"
  end
end

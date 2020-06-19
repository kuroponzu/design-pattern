require "singleton"

class SingletonObject
  include Singleton
  attr_accessor :singleton

  def initialize
    puts "インスタンスを生成しました。"
    @singleton = Singleton.new
  end

  def self.get_instance
    @singleton
  end
end

require "./framework/product.rb"

class MessageBox
  include Framework::Product

  attr_accessor :decochar

  def initialize(decochar:)
    @decochar = decochar
  end

  def use(s:)
    length = s.getBytes.length
    (length.to_i + 4).times do |i|
      print(decochar)
    end
    puts ""
    puts "#{decochar} #{s} #{decochar}"
    (length.to_i + 4).times do |i|
      print(decochar)
    end
    puts ""
  end

  def create_clone
    p = nil
    begin
      p = self.clone
    rescue Exception => e
      e.backtrace
    end
  end
end

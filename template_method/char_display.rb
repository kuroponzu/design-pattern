require "./abstract_display.rb"

class CharDisplay
  include AbstractDisplay

  attr_reader :char

  def initialize(char:)
    @char = char
  end

  def open
    print "<<"
  end

  def print_char
    print char
  end

  def close
    puts ">>"
  end
end

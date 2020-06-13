require "./abstract_display.rb"

class StringDisplay
  include AbstractDisplay

  attr_reader :string, :width

  def initialize(string:)
    @string = string
    @width = string.bytes.length
    puts string.bytes
  end

  def open
    print_line()
  end

  def print_char
    puts "|#{@string}|"
  end

  def close
    print_line()
  end

  private

  def print_line
    print "+"
    width.times do
      print "-"
    end
    puts "+"
  end

end

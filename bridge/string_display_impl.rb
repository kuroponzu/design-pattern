require "./display_impl.rb"

class StringDisplayImpl
  include DisplayImpl

  def initialize(string:)
    @string = string
    @width = string.bytesize
  end

  def raw_open
    pritn_line
  end

  def raw_print
    puts "| #{string} |"
  end

  def raw_close
    pritn_line
  end

  private
  attr_accessor :string, :width

  def pritn_line
    print "+"
    width.times do
      print "-"
    end
    puts "+"
  end
end

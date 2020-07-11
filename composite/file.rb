require "./entry"

class File
  include Entry

  def initialize(name:, size:)
    @name = name
    @size = size
  end

  def get_name
    name
  end

  def get_size
    size
  end

  def print_list(dummy = nil, prefix = nil)
    puts "#{prefix}/#{self}"
  end

  private
  attr_accessor :name, :size
end

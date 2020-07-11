require "./entry"

class Directory
  include Entry

  def initialize(name:)
    @name = name
  end

  def get_name
    name
  end

  def get_size
    size = 0
    directory.each do |d|
      size += d.super_class.get_size 
    end
  end

  def add(entry:)
    directory.add(entry)
    self
  end

  def print_list(:prefix)
    puts "#{prefix}/#{self}"
    directory.each do |d|
      d.super_class.print_list("#{prefix}/#{name}")
    end
  end

  private
  attr_accessor :name, :directory
end

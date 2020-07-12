require "./entry"

class DirEntry < Entry

  def initialize(name:)
    @name = name
    @directory = Array.new
  end

  def get_size
    size = 0
    directory.each do |d|
      size += d.super_class.get_size 
    end
  end

  def add(entry:)
    puts entry.class
    directory << entry
  end

  def ls_entry(prefix:)
    puts "#{prefix}/#{name}"
    directory.each do |d|
      puts d.class
      d.ls_entry(prefix: "#{prefix}/#{d.name}")
    end
  end

  def remove
    directory.each do |i|
      i.remove
    end
    puts "#{name}を削除しました。"
  end

  attr_accessor :name, :directory

end

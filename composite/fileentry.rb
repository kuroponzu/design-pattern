require "./entry"

class FileEntry < Entry

  def initialize(name:)
    @name = name
  end

  def ls_list(prefix:)
    puts "#{prefix}/#{name}"
  end

  def remove
    puts "#{name}を削除しました"
  end

  attr_accessor :name
end

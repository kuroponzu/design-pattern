require "./singleton_object.rb"

class Main
  def self.run
    puts "start"
    obj1 = SingletonObject.get_instance
    obj2 = SingletonObject.get_instance
    if obj1 == obj2
      puts "同じインスタンスです。"
    else
      puts "違うインスタンスです。"
    end
    puts "end"
  end
end

Main.run

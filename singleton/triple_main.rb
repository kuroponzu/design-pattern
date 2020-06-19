require "./triple.rb"

class TripleMain
  def self.run
    puts "start"
    9.times.each do |i|
      triple = Triple.instance.get_instance(id: i % 3)
      puts "#{i}:#{triple}"
    end
    puts "end"
  end
end

TripleMain.run

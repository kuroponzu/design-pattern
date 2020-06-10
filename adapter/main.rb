require './print_banner.rb'

class Main
  def run
    p = PrintBanner.new(string: "hello")
    puts p
    p.print_weak
    p.print_strong
  end
end

Main.new.run

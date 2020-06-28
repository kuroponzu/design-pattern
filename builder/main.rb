require "./text_builder.rb"
require "./html_builder.rb"
require "./director.rb"

class Main
  def self.run(args:)

    if (args == "plain")
      textbuilder = TextBuilder.new
      director = Director.new(builder: textbuilder)
      director.construct
      puts textbuilder.get_result
    elsif (args == "html")
      htmlbuilder = HtmlBuilder.new
      director = Director.new(builder: htmlbuilder)
      director.construct
      puts htmlbuilder.get_result
    else
      usage()
      exit 0
    end
  end

  def self.usage
    puts ("Usage: java main plain プレーンテキストで文章作成")
    puts ("Usage: java main html htmlで文章作成")
  end
end

Main.run(args: ARGV[0].to_s)

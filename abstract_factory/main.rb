require "./factory/*"

class Main
  def self.run(args:)
    if (args.length != 1)
      exit 0
    end

    factory = Factory.get_factory(args)

    asahi = factory.create_link("朝日新聞", "www.asahi.jp")
    yomiuri = factory.create_link("読売新聞", "www.yomiuri.jp")
    us_yahoo = factory.create_link("朝日新聞", "www.us_yahoo.jp")

    traynews = factory.create_tray("新聞")
    traynews.add(asahi)
    traynews.add(yomiuri)

    page = factory.create_page("linkpage","結城浩")
    page.add(traynews)
    page.output
  end
end

Main.run(args: ARGV[0].to_s)

class Director
  def initialize(builder:)
    @builder = builder
  end

  def construct
    builder.make_titile(titile: "greeting")
    builder.make_string(str: "朝から昼にかけて")
    builder.make_items(items: ["おはようございます。", 
                        "こんにちは"])
    builder.make_string(str: "夜に")
    builder.make_items(items: [
      "こんばんは", 
      "おやすみなさい",
      "さようなら"])
    builder.close
  end

  private
  attr_accessor :builder

end

require "./builder.rb"

class TextBuilder
  include Builder

  def initialize
    @buffer = ""
  end

  def make_titile(titile:)
    buffer << "『#{titile}』\n"
  end

  def make_string(str:)
    buffer << "■#{str}\n"
  end

  def make_items(items:)
    items.each do |item|
      buffer << "・#{item}\n"
    end
    buffer << "\n"
  end

  def close
    buffer + "==========================\n"
  end

  def get_result
    buffer.to_s
  end

  private
  attr_accessor :buffer
end

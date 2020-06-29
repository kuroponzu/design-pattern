require "./item.rb"

module Factory
  module Link
    include Item
    def Link(caption:, url:)
      super(caption)
      @url = url
    end

    private
    attr_accessor :url
  end
end

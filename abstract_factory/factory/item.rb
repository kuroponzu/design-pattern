module Factory
  module Item
    def item(caption:)
      @caption = caption
    end

    def make_html
      raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
    end

    private
    attr_accessor :caption
  end
end

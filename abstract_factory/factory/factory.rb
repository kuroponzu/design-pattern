module Factory
  module Factory
    def get_factory(classname:)
      factory = nil
      begin
        factory = Class.forName.new
      rescue => ClassNotFoundException
        puts "クラス#{classname}が見つかりません。"
      rescue => exception
        e.backtrace
      end
    end
    
    def create_link(caption:, url:)
      raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
    end
    
    def create_tray(caption:)
      raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
    end

    def create_page(title:, author:)
      raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
    end
  end
end

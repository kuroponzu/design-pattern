module Factory
  module Page
    def initialize(title:, author:)
      @title = title
      @author = author
      content = Array.new
    end
    
    def add(item:)
      content.add(item)
    end

    def output
      filename = title + ".html"
      write = File.open(file_name, "w")
      write.put(make_html)
      puts "#{filename}を作成しました。"
    end

    def make_html
      raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
    end
  end
end

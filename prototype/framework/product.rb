module Framework
  module Product
    include Cloneable
    
    def use(s:)
      raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
    end

    def create_clone
      raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
    end
  end
end

module Builder
  
  def make_title(title:)
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def make_string(str:)
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def make_item(items:)
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def close
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end
end

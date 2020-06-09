module Iterator
  def has_next
    raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
  end

  def next
    raise NotImplementalEroor.new("#{self.class}##{__class__}が実装されていません。")
  end
end

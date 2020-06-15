module Product
  def use
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end
end

module Strategy
  def next_hand
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def sutdy(win:)
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end
end

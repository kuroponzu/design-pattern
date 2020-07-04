module DisplayImpl
  def raw_open
    raise NotImplementedError.new("#{self.class}##{__method__}が実装されていません。")
  end

  def raw_print
    raise NotImplementedError.new("#{self.class}##{__method__}が実装されていません。")
  end

  def raw_close
    raise NotImplementedError.new("#{self.class}##{__method__}が実装されていません。")
  end
end

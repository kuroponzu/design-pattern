module AbstractDisplay
  def open
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def print_char
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def close
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def display
    open()
    5.times do
      print_char
    end
    close()
  end

end

module Entry
  def get_name
    raise NotImplementedError.new("#{self.class}##{__method__}が実装されていません。")
  end

  def get_size
    raise NotImplementedError.new("#{self.class}##{__method__}が実装されていません。")
  end

  def add(entry:)
  rescue FileTreatmentException.new
  end

  def print_list(dummy = nil)
    print_list("")
  end

  def print_list(dummy = nil, prefix = nil)
    raise NotImplementedError.new("#{self.class}##{__method__}が実装されていません。")
  end

  def to_string
    "#{self.get_name}(#{self.get_size})"
  end
end

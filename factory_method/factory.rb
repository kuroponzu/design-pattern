module Factory
  def create(owner:)
    p = create_product(owner: owner)
    register_product(product: p)
    p
  end

  def create_product(owner:)
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end

  def register_product(product:)
    raise NotImplementedError.new("#{self.class}##{__class__}が実装されていません。")
  end
end

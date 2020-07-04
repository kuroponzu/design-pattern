class Display

  def self.method_added(name)
    if self == Display
      return
    end

    # if Display.instance_eval{ method_defined?(:display) }
    #   remove_method(:display)
    #   raise TypeError, "do not Override the method"
    # end
  end

  def initialize(impl:)
    @impl = impl
  end

  def open
    impl.raw_open
  end

  def close
    impl.raw_close
  end

  def print
    impl.raw_print
  end

  def display
    open
    close
    print
  end

  private
  attr_accessor :impl
end

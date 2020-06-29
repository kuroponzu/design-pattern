module Framework
  class Manager
    attr_accessor :showcase

    def initialize
      @showcase = Showcase.new
    end

    def register(name:, proto:)
      showcase.put(name, proto)
    end

    def string(protpname:)
      p =showcase.get(protpname)
      p.create_clone
    end
  end
end

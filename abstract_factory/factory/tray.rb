require "./item"

module Factory
  module Tray
    include item

    def tray(caption:)
      super(caption)
    end

    def add(item:)
      tray.add(item)
    end
  end
end

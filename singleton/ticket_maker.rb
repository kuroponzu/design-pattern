require "singleton"

class TicketMaker
  include Singleton
  attr_accessor :ticket

  def initialize
    @ticket = 1000
  end

  def get_next_ticket_number
    @ticket += 1
  end
end

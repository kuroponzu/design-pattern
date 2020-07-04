require "./display_impl.rb"

class CharDisplayImpl
  include DisplayImpl

  def initialize(head:, body:, foot:)
    @head = head
    @body = body
    @foot = foot
  end

  def raw_open
    print head
  end

  def raw_print
    print body
  end

  def raw_close
    puts foot
  end

  private
  attr_accessor :head, :body, :foot
end

require "./aggregate.rb"
require "./book_shelf_iterator.rb"

class BookShelf
  include Aggregate

  attr_reader :books
  attr_accessor :last

  def initialize(maxsize:)
    @books = Array.new(maxsize)
    @last = 0
  end

  def get_book_at(index:)
    books[index]
  end

  def append_book(book:)
    books[last] = book
    @last = @last + 1
  end

  def get_length
    last
  end

  def iterator
    BookShelfIterator.new(book_shelf: self)
  end

end

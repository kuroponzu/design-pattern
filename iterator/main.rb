require './book_shelf.rb'
require './book.rb'

class Main
  def run
    book_shelf = BookShelf.new(maxsize: 4)
    book_shelf.append_book(book: Book.new(name: "AroundtheWorld"))
    book_shelf.append_book(book: Book.new(name: "Bible"))
    book_shelf.append_book(book: Book.new(name: "Cinderella"))
    book_shelf.append_book(book: Book.new(name: "Daddy-long-legs"))
    it = book_shelf.iterator
    while it.has_next?
      book = it.next
      puts book.name
    end
  end
end

Main.new.run

require_relative 'book'
require_relative 'person'
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @book.rentals.push(self)
    @person = person
    @person.rentals.push(self)
  end

  def add_book(book)
    @book = book
    book.rentals_list.push(self) unless book.rentals_list.include?(self)
  end
end

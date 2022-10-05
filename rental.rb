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
end

book = Book.new('Advance Javascript', 'Afolabi')
person = Person.new(34, 'Afolabi')
rental = Rental.new('2002', book, person)
puts rental.date
puts rental, person.name
puts rental, person.age
puts rental.book.title
puts rental.book.author

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
book = Book.new('Basic Javascript', 'Ambrose')
person = Person.new(34, 'Afolabi')
person = Person.new(30, 'Ambrose')
rental = Rental.new('2002', book, person)
rental2 = Rental.new('2022', book, person)
puts rental.date
puts rental, person.name
puts rental, person.age
puts rental.book.title
puts rental.book.author
puts rental2.date
puts rental2.person.name
puts rental2.person.age
puts rental2.book.title
puts rental2.book.author
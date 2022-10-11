require_relative 'book'
require_relative 'person'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
   @people = []
    @rentals = []
  end

  def list_books
    @books.each_with_index { |book, i| print "(#{i}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n" }
  end

  def list_people
    people = [*@teacher, *@student]
    people.each_with_index { |person, i| print "(#{i}) Name: \"#{person.name}\", Age: \"#{person.age}\"\n" }
  end
  def list_rentals
    print 'Enter person ID: '
    id = gets.chomp.to_i
    @rentals.each do |rental|
      if rental.person.id == id
        print "Date: #{rental.date}, Book: \"#{rental.book.title}\" Author #{rental.book.author}\n"
      end
    end
  end
end

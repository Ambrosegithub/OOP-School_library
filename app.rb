require 'json'
require_relative 'book'
require_relative 'person'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'
require_relative 'handle_json'
require_relative 'handle_book_json'
require_relative 'handle_people'
require_relative 'handle_rentals'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
    read_people
    readbooks
    read_rentals
  end
  include FileHandler
  include HandleBook
  include HandlePeople
  include HandleRentals

  def list_books
    @books.each_with_index { |book, i| print "(#{i}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n" }
  end

  def list_people
    @people.each_with_index do |person, i|
      print "(#{i}) Name: \"#{person.name}\", Age: \"#{person.age}\" Id: \"#{person.id}\"\n"
    end
  end

  def list_rentals
    print 'Enter person ID: '
    id = gets.chomp.to_i
    @rentals.each do |rental|
      if id == rental.person.id
        print "Date: #{rental.date}, Book: \"#{rental.book.title}\" Author #{rental.book.author}\n"
      end
    end
  end
end

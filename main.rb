require_relative 'App'
require_relative 'create_person'
require_relative 'create_rental'
require_relative 'create_book'

class Main
  def initialize
    @app = App.new
    @output = 0
  end

  def option
    print 'Welcome to School Library App!'
    while @output != 7
      print "\nPlease choose an option by entering a number: \n\n"
      print "1 - List all books\n"
      print "2 - List all people\n"
      print "3 - Create a person\n"
      print "4 - Create a book\n"
      print "5 - Create a rental\n"
      print "6 - List all rentals for a given person id\n"
      print "7 - Exit\n"
      start_app
    end
  end

  def start_app
    @output = gets.chomp.to_i
    case @output
    when 1
      @app.list_books
    when 2
      @app.list_people
    when 3
      CreatePerson.new(@app.people).create_person
    when 4
      CreateBook.new(@app.books).create_book
    when 5
      CreateRental.new(@app.rentals).create_rental(@app)
    when 6
      @app.list_rentals
    end
  end
end
main = Main.new
main.option

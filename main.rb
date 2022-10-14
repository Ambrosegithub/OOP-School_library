require_relative 'app'
require_relative 'create_person'
require_relative 'create_rental'
require_relative 'create_book'
require_relative 'start'

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
      start
    end
  end
end
main = Main.new
main.option

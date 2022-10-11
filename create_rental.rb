require_relative 'rental'
class CreateRental
    def initialize(rental)
        @rentals = rental
    end
    def create_rental(app)
        book, person, date = collect_rental_info(app)
        new_rental = Rental.new(date, app.books[book], app.people[person])
        update_collection(new_rental)
    end
    private
    def collect_rental_info(app)
        print "Select a book from the following list by number\n"
        app.list_books
        book = gets.chomp.to_i
        print "Select a person\n"
        app.list_people
        person = gets.chomp.to_i
        print "\n Select Date(yyyy/mm/dd): "
        date = gets.chomp
        return book,person,date
    end
    def update_collection(new_rental)
        @rentals.push(new_rental)
        puts 'Rental created successfully'
    end
end
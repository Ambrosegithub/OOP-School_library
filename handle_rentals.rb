require 'json'
require_relative 'rental'

module HandleRentals
  def store_rentals
    rentalArray = []
    @rentals.map do |rental|
      rentalArray.push(
        {
          date: rental.date,
          person_id: rental.person.id,
          book_title: rental.book.title
        }
      )
    end
    write_json(rentalArray, './rental.json')
  end

  def read_rentals
    file = File.read('./rental.json')
    JSON.parse(file)
      .each do |rental|
      date = rental['date']
      person = filter_people(rental['person_id'])
      book = filter_books(rental['book_title'])
      @rentals.push(Rental.new(date, person, book))
    end
  end

  def filter_people(person_id)
    @people.filter { |person| return person if person.id == person_id }
  end

  def filter_books(_book_title)
    @books.each { |book| return book if book.title == title }
  end
end

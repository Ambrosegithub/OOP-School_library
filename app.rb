require_relative 'book'
require_relative 'person'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'

class App
  attr_accessor :books, :teacher, :student, :rentals

  def initialize
    @books = []
    @teacher = []
    @student = []
    @rentals = []
  end

  def list_books
    @books.each_with_index { |book, i| print "(#{i}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n" }
  end

  def list_people
    people = [*@teacher, *@student]
    people.each_with_index { |person, i| print "(#{i}) Name: \"#{person.name}\", Age: \"#{person.age}\"\n" }
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    input = gets.chomp.to_i
    case input
    when 1
      print 'Age: '
      age = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp
      print 'Enter classroom:'
      classroom = gets.chomp
      new_student = Student.new(age, classroom)
      new_student.name = name
      @student.push(new_student)
      puts 'Student has been created successfully'
    when 2
      print 'Age: '
      age = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp
      print 'Enter specialization:'
      specialization = gets.chomp
      new_teacher = Teacher.new(age, specialization)
      new_teacher.name = name
      @teacher.push(new_teacher)
      puts 'Teacher has been created successfully'

    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    new_book = Book.new(title, author)
    @books.push(new_book)
    puts 'Book has been created successfully'
  end

  def create_rental
    print "Select a book from the following list by number\n"
    list_books
    book = gets.chomp.to_i
    print "Select a person\n"
    list_people
    person = gets.chomp.to_i
    print 'Select Date: '
    date = gets.chomp
    people = [*@teacher, *@student]
    new_rental = Rental.new(date, @books[book], people[person])
    @rentals.push(new_rental)
    puts 'Rental created successfully'
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

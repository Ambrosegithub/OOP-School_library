class CreateBook
  def initialize(book)
    @books = book
  end

  def create_book
    title, author = collect_book_info
    new_book = Book.new(title, author)
    add_to_collection(new_book)
  end

  private

  def collect_book_info
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    [title, author]
  end

  def add_to_collection(new_book)
    @books.push(new_book)
    puts 'Book has been created successfully'
  end
end

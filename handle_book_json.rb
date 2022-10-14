require 'json'

module HandleBook
  def storebooks
    book_array = []
    @books.map do |book|
      book_array.push(
        {
          title: book.title,
          author: book.author
        }
      )
    end

    write_json(book_array, './book.json')
  end

  def readbooks
    parse_file = File.read('./book.json')
    JSON
      .parse(parse_file)
      .each do |book|
      @books.push(Book.new(book['title'], book['author']))
    end
  end
end

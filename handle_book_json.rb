require 'json'

module HandleBook
  def storebooks
    bookArray = []
    @books.map do |book|
      bookArray.push(
        { 
            title: book.title, 
            author: book.author 
            }
        )
    end

    write_json(bookArray, './book.json')
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

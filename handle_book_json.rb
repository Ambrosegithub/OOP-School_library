require 'json'
require_relative 'book'

module handlebook 
    def storebooks
        
        bookArray = [] 
        @books.map do |book|
        bookArray.push({title: book.title, author: book.author})
        end

        write_json(bookArray, book.json)      
    end 

    def readbooks
        file = File.read(book.json)
        JSON.parse(file)
        .each{|book| @books.push(Book.new(book['title'],book['author']))}
    end
end

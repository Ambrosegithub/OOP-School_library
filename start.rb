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
  when 7
    @app.storebooks
    #@app.store_people
    #@app.storerentals

    puts 'Thank you for using this app!'
  else
    puts 'Invalid option'
  end
end

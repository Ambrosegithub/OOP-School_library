require_relative '../rental'
require_relative '../teacher'
require_relative '../book'

describe Rental do
  before :each do
    @book = Book.new('The Hobbit', 'J.R.R. Tolkien')

    @teacher = Teacher.new(23, 'Troy Trueheart', 'Math')
    @rental = Rental.new('2020-01-01', @teacher, @book)
  end

  it 'should have a date' do
    expect(@rental.date).to eq('2020-01-01')
  end

  it 'should have a person' do
    expect(@rental.person.name).to eq('Troy Trueheart')
  end

  it 'should have a book' do
    expect(@rental.book.title).to eq('The Hobbit')
  end

  it 'should return instance' do
    expect(@rental).to be_an_instance_of(Rental)
  end
end

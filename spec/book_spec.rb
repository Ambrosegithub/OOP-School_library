require_relative '../book'
require_relative '../rental'

describe Book do
  let(:book) { Book.new('The Hobbit', 'J.R.R. Tolkien') }

  it 'should have a title' do
    expect(book.title).to eq('The Hobbit')
  end

  it 'should have an author' do
    expect(book.author).to eq('J.R.R. Tolkien')
  end

  it 'should have rentals' do
    expect(book.rentals).to eq([])
  end

  it 'should return instance' do
    expect(book).to be_an_instance_of(Book)
  end

  it 'does not accept fewer than 2 parameters' do
    expect { Book.new('The Hobbit') }.to raise_error(ArgumentError)
  end

  it 'does not accept more than 2 parameters' do
    expect { Book.new('The Hobbit', 'J.R.R. Tolkien', 'test') }.to raise_error(ArgumentError)
  end
end

require 'spec_helper'

describe Rental do
  before :each do
    @rental = Rental.new('date', 'book', 'person')
  end

  describe '#new' do
    it 'Should take 3 parameters and return Rental object' do
      expect(@rental).to be_an_instance_of Rental
    end
  end

  describe '#rentals' do
    it 'check for rental histories' do
      expect(@rental.date).to eql 'date'
      expect(@rental.book).to eql 'book'
      expect(@rental.person).to eql 'person'
    end
  end
end

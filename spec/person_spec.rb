require_relative '../person'

describe Person do
  let(:person) { Person.new(20, 'John Doe', parent_permission: true) }

  it 'should have a name' do
    expect(person.name).to eq('John Doe')
  end

  it 'should have an age' do
    expect(person.age).to eq(20)
  end

  it 'should have a parent permission' do
    expect(person.parent_permission).to eq(true)
  end

  it 'should have rentals' do
    expect(person.rentals).to eq([])
  end

  it 'should return the name of the person' do
    expect(person.correct_name).to eq('John Doe')
  end

  it 'should return instance' do
    expect(person).to be_an_instance_of(Person)
  end

  it 'should check that student below 18 cannot use service' do
    person.age = 14
    person.parent_permission = false
    expect(person.can_use_services?).to eq(false)
  end
end

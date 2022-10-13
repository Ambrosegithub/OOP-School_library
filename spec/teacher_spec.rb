require_relative '../teacher'

describe Teacher do
  let(:teacher) { Teacher.new(23, 'Troy Trueheart', 'Math') }

  it 'should have a name' do
    expect(teacher.name).to eq('Troy Trueheart')
  end

  it 'should have an age' do
    expect(teacher.age).to eq(23)
  end

  it 'should have a specialization' do
    expect(teacher.specialization).to eq('Math')
  end

  it 'should return true' do
    expect(teacher.can_use_services?).to eq(true)
  end

  it 'should return instance' do
    expect(teacher).to be_an_instance_of(Teacher)
  end
end

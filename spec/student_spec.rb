require_relative '../student'
require_relative '../classroom'

describe Student do
  let(:student) { Student.new(12, 'Leo Masese', 'Art', parent_permission: true) }

  it('should have a name') do
    expect(student.name).to eq('Leo Masese')
  end

  it 'should have an age' do
    expect(student.age).to eq(12)
  end

  it 'should have a classroom' do
    expect(student.classroom).to eq('Art')
  end

  it 'should have parent-permission equal to true' do
    expect(student.parent_permission).to eq(true)
  end

  it 'should allow student to play hooky' do
    expect(student.play_hooky).to eq("¯\(ツ)/¯")
  end

  it 'should return instance' do
    expect(student).to be_an_instance_of(Student)
  end

  it 'allows student to have a classroom' do
    classroom = Classroom.new('Math')
    student.classroom = classroom
    expect(student.classroom).to eq(classroom)
  end
end

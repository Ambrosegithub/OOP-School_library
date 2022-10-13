require_relative 'spec_helper'
describe Classroom do
  let(:classroom) { Classroom.new('Science') }
  it 'should have students' do
    expect(classroom.students).to eq([])
  end
  it 'should have a label' do
    expect(classroom.label).to eq('Science')
  end
  it 'should return instance' do
    expect(classroom).to be_an_instance_of(Classroom)
  end
end
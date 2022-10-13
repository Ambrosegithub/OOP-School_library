require_relative 'person'
class Student < Person
  attr_reader :classroom, :id


  def initialize(age, name, classroom = 'Unknown', parent_permission: false)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

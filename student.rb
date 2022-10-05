require_relative 'person'
class Student < Person
  attr_accessor :name, :parent_permission
  attr_reader :classroom

  def initialize(name, parent_permission, classroom = 'Unknown')
    super(name, parent_permission)
    @classroom = classroom
    @name = name
    @parent_permission = parent_permission
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

student = Student.new('Hatim', true)
puts student.play_hooky
puts student.name

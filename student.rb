require_relative 'person'
class Student < Person
  attr_accessor :classroom, :name, :parent_permission

  def initialize(name, parent_permission, classroom = 'Unknown')
    super(name, parent_permission)
    @classroom = classroom
    @name = name
    @parent_permission = parent_permission
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student = Student.new('Hatim', true)
puts student.play_hooky
puts student.name

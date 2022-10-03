require_relative 'person'
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom = 'Unknown')
    super(age, name)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student = Student.new('Hatim')
puts student.play_hooky

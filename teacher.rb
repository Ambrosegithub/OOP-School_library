require_relative './person'
class Teacher < Person
  def initialize(specialization = 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
teacher = Teacher.new
puts teacher.can_use_service?

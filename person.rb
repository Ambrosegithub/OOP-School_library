class Nameable 
  def correct_name
      raise NotImplementedError
  end
end


class BaseDecorator < Nameable
  attr_accessor :nameable
  def initialize(nameable)
      super()
      @nameable = nameable
  end
  def correct_name
      @nameable.correct_name
  end
  end
  class  CapitalizeDecorator < BaseDecorator
      def correct_name
          @nameable.correct_name.capitalize
      end
  end
  class  TrimmerDecorator < BaseDecorator
      def correct_name
        return  @nameable.correct_name[0...10] if @nameable.correct_name.length > 10
          return @nameable.correct_name 
      end
  end
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end
  def of_age?
    if @age >= 18
      true
    elsif @age < 18
      false
    end
  end
  private :of_age?
  # public method

  def can_use_services?
    of_age? || @parent_permission
  end
  public :can_use_services?
end
=begin
person = Person.new('Ambrose', 37)
puts person.name

person.name = 'JOHN'
person.age = 33
puts person.name
puts person.age
=end
person = Person.new(22, 'maximilianus')
  puts person.correct_name
 capitalizedPerson = CapitalizeDecorator.new(person)
 puts capitalizedPerson.correct_name
  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
  puts capitalizedTrimmedPerson.correct_name

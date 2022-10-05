# require_relative 'rental'
# require_relative 'book'
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

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    return @nameable.correct_name[0...10] if @nameable.correct_name.length > 10

    @nameable.correct_name
  end
end

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
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

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized = CapitalizeDecorator.new(person)
puts capitalized.correct_name
trimmed = TrimmerDecorator.new(capitalized)
puts trimmed.correct_name

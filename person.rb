class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
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
person = Person.new('Ambrose', 37)
puts person.name

person.name = 'JOHN'
person.age = 33
puts person.name
puts person.age

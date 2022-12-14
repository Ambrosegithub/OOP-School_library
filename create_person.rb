class CreatePerson
  def initialize(people)
    @people = people
  end

  def create_person
    case @input = collect_person
    when 1
      print 'Do you have parental permission? [Y/N]: '
      parent_permission = gets.chomp
      case parent_permission.capitalize
      when 'Y'
        true
      else
        false
      end
      new_student = create_student
      add_to_collection(new_student)
    when 2
      new_teacher = create_teacher
      add_to_collection(new_teacher)
    else
      puts 'Wrong input'
      create_person
    end
  end

  private

  def collect_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    gets.chomp.to_i
  end

  def age_name
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    [age, name]
  end

  def collect_specialization
    print 'Enter specialization:'
    gets.chomp
  end

  def class_get
    print 'Enter classroom:'
    gets.chomp
  end

  def create_student
    age, name = age_name
    classroom = class_get
    student = Student.new(age, name, classroom, parent_permission: true)
    puts 'student has been created successfully'
    student
  end

  def create_teacher
    age, name = age_name
    specialization = collect_specialization
    teacher = Teacher.new(age, name, specialization)
    puts 'teacher has been created successfully'
    teacher
  end

  def add_to_collection(person)
    @people.push(person)
    # puts "person has been created successfully"
  end
end

require 'json'
require_relative 'person'

module HandlePeople
    def store_people
        peopeleArr = []
        @people.map do |person|
            if person_instance_of?(Student)
                peopeleArr.push({
                    id: person.id,
                    type: person.class,
                    age: person.age,
                    name: person.name,
                    parent_permission: person.parent_permission,
                        
                }
            )
        else 
            peopeleArr.push({
                id: person.id,
                type: person.class,
                age: person.age,
                name: person.name,
                specialization: person.specialization,
                }
            )
        end
      end
      write_json(peopeleArr, './people.json')
  end

 def read_people
    # puts file
   File.write("./people.json", []) unless File.exists?("./people.json")
   puts File.read("./people.json")
   mydata = JSON.parse(File.read("./people.json"))

    mydata.each do |person|
    if person['type'] == 'teacher'
   teacher = Teacher.new( person['name'], person['age'], person['specialization'])
   teacher.id = person['id']
    @people.push(teacher)
    else
        student = Student.new(person['name'], person['age'], person['parent_permission'])
        student.id = person['id']
        @people.push(student)
    end
  end
 end
end


require_relative '../decorators'
require_relative '../person'

describe Person do
  context 'test for Person decorations from the nameable class' do
    person = Person.new(12, 'eve dallas roarke', parent_permission: true)
    person.correct_name

    capitalized_name = CapitalizeDecorator.new(person)
    trimmed_name = TrimmerDecorator.new(capitalized_name)

    it 'should return capitalized name' do
      expect(capitalized_name.correct_name).to eq('Eve dallas roarke')
    end

    it 'should return trimmed name' do
      expect(trimmed_name.correct_name).to eq('Eve dallas')
    end
  end
end

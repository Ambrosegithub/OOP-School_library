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
        @nameable.correct_name[0...10] if @nameable.correct_name.length > 10
        return @nameable.correct_name 
    end
end
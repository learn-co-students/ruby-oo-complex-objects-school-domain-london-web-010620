# code here!
class School
    attr_accessor :name, :roster, :add_student

    def initialize(roster)
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.key?(grade)
            @roster[grade] << student_name
        else 
            roster[grade] = []
            roster[grade] << student_name
        end
    end


    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.update(@roster) { |key, value| value.sort}
    end



end
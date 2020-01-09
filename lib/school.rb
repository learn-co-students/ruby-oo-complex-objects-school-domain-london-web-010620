# code here!
class School 

attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end 


    def add_student (student_name, grade)
        if
            @roster.has_key?(grade)
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end 

    def grade (grade)
        @roster[grade]
    end

    def sort 
         @roster.update(@roster) {|grade, student_name| student_name.sort}
    end
end 


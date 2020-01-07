class School
    attr_accessor :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

def add_student(student_name, grade)
 if @roster.has_key?(grade) 
    @roster[grade] << student_name 
 else 
    @roster[grade] = []
    @roster[grade] << student_name
 end
end

def grade(grade)
    @roster[grade]
end

def sort
    #@roster.each do |key, value| 
     #   arr = value.sort
     @roster.update(@roster) { |key, value| value.sort }

end

end

school = School.new("Bayside High School")


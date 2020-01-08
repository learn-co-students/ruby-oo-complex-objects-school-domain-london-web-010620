# code here!

class School

        attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
   
    end

    def add_student(name, grade)
       if @roster[grade] 
        @roster[grade] << name 
       else
        @roster[grade] = []
        @roster[grade] << name
       end
    end

    def grade(grade)
        @roster[grade]
    end

    # write a method that sort the students alphab, 
    def sort
        sorted = {}
        @roster.each{|grade, student| sorted[grade] = student.sort}
        sorted
    end

end

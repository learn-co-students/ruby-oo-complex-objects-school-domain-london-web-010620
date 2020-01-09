class School
    attr_accessor :name, :roster
   
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end
    def add_student(student_name, class_number)
        if @roster.key?(class_number)
            @roster[class_number] << student_name
        else
            @roster[class_number] = []
            @roster[class_number] << student_name
        end
    end

    def grade(class_number)
        @roster[class_number]
    end

    def sort
        @roster.update(@roster){|key,value|value.sort}
    end

end

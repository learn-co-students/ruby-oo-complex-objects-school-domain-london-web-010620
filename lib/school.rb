class School

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def roster=(roster_list)
        @roster = roster_list
    end

    def roster
        @roster
    end

    def add_student(student_name, class_number)
        if @roster.key?(class_number)
            @roster[class_number] << student_name
        else             

            @roster[class_number] = []
            @roster[class_number] << student_name
        end

        def grade(class_number)
            @roster[class_number]
        end

        def sort
            # @roster.each 
            # {|class_number, student_name| class_number[student_name] }.to_h

            @roster.update(@roster) { |key,value| value.sort}
        end
    end

    
end
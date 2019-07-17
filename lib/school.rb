# code here!

class School
    attr_accessor :roster, :student, :grade, :school_name
    
    def initialize(name)
        @school_name = name
        @roster = {}
    end

    def add_student(name, grade)
        @student = name
        @grade = grade

        # Elegant conditional loop to populate the roster
        @roster[@grade] = [] unless @roster.key?(@grade)
        @roster[@grade].push(@student)

        # if @roster.key?(@grade)
        #     @roster[@grade].push(@student)
        # else
        #     @roster[@grade] = [@student]
        # end
      
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
            sorted = @roster.each{|grades, names| names.sort!}
    end

end

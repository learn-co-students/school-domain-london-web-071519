# code here!
require "pry"
class School

    attr_accessor :roster 

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        if roster.keys.include?(@grade)
            @roster[@grade] << @name
        else
            @roster[@grade] = [@name]
        end
    end
    
    def grade(grade_num)
        return @roster[grade_num]
    end

    def sort
        list = []
        @roster.each do |grade|
           grade[1].sort!
        end
    end 
end

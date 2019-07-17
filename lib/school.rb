# code here!
require 'pry'

class School

    attr_accessor 
    attr_reader :school_name, :roster, :student_name, :grade


    def initialize(school_name, roster={})
        @school_name = school_name
        @roster = roster
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade

        @roster[@grade] = [] unless @roster.include?(@grade)
        @roster[@grade] << @student_name
  
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = @roster.each {|grade, students| students.sort!}
    end

end

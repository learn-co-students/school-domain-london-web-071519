require "pry" 

class School 

   attr_reader :name, :roster 
  
def initialize(name)
  @name = name, 
  @roster = {}
end 

def add_student(name, grade)
  @name = name 
  @grade = grade 
    if @roster[@grade] 
       @roster[@grade] << @name
    else 
       @roster[@grade] = [@name]
  end 
end 

def grade(grade)
  @grade = grade
  @roster[@grade] 
end 

def sort 
  @roster.each do |grades, names|
  @roster[grades] = names.sort  
  end 
end 

end 
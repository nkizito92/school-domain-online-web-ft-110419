# code here!
class School 
  attr_accessor :roster 
  attr_reader :model, :roster, :add_student
  
  def initialize(roster)
    @roster = []
  end
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |student, grade| student[grade] = [] }    
  end 
  def add_student(student_name, grade) 
     @roster[grade] << student_name 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  def sort 
    student = {} 
    roster.each do |name, grade|
      student[name] = grade.sort
    end
    student
  end 
end 
school = School.new("Bayside High School")
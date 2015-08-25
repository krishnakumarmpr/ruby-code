class Student < ActiveRecord::Base
  # attr_accessible :title, :body
def add
puts 'hai'
end
end
class Bca > Student
def sub 
puts 'hello'
end
end
class Mca > Student
def div
puts 'hello'
end
end

 

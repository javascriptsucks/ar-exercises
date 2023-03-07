require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
store1 = Store.where(id: 1)
store2 = Store.where(id: 2)
p store1
p store2
store1.employee.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

employee1, employee2 = Employee.new, Employee.new
employee1.first_name, employee2.first_name = "Khurram", "Chang"
employee1.last_name, employee2.first_name = "Virani", "Li"
employee1.store, employee2.store = 1, 1
employee1.hourly_rate, employee2.hourly_rate = 60, 80

employee1.save
employee2.save


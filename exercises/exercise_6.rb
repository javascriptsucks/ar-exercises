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
p @store1
p @store2
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

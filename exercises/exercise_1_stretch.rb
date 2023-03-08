require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 1 Stretch"
puts "----------"

employee = @store2.employees.create(first_name: "Ron", last_name: "W", hourly_rate: 60)

p employee

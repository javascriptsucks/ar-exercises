require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# puts "Need a new store NAME: "
# new_store_name = gets.chomp

# store7 = Store.new
# store7.name = new_store_name

# store7.save

@store1.employees.create(last_name: "Virani")
puts Employee.all.count

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
puts "Need a new store NAME: "
new_store_name = gets.chomp
Store.create(name: new_store_name)
puts store7.valid?
puts store7.errors.full_messages

# @store1.employees.create(last_name: "Virani")
# puts Employee.all.count

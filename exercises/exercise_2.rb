require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store11, @store12 = Store.find_by(id: 1), Store.find_by(id: 2)
p @store11
p @store12
@store11.name = "Saskatoon"
@store11.save

p Store.all

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# store1 = Store.where(id: 1)
# store2 = Store.where(id: 2)
p @store1
p @store2
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Chang", last_name: "Li", hourly_rate: 60)
@store1.employees.create(first_name: "C", last_name: "B", hourly_rate: 60)
@store1.employees.create(first_name: "JC", last_name: "Cano", hourly_rate: 60)
@store1.employees.create(first_name: "Sony", last_name: "Apple", hourly_rate: 60)
@store1.employees.create(first_name: "Max", last_name: "Min", hourly_rate: 60)
@store2.employees.create(first_name: "Max", last_name: "Tom", hourly_rate: 60)
@store2.employees.create(first_name: "Abe", last_name: "Sam", hourly_rate: 60)
@store2.employees.create(first_name: "Colin", last_name: "Karen", hourly_rate: 60)

@store2.employees.create(first_name: "Chad", last_name: "Obe", hourly_rate: 60)
@store2.employees.create(first_name: "Chen", last_name: "Li", hourly_rate: 60)
@store2.employees.create(first_name: "Ryan", last_name: "Black", hourly_rate: 60)
@store2.employees.create(first_name: "Sonic", last_name: "Sensai", hourly_rate: 60)
@store2.employees.create(first_name: "Quinn", last_name: "Senpai", hourly_rate: 60)
@store2.employees.create(first_name: "Kate", last_name: "Liu", hourly_rate: 60)


puts Employee.all.count


# employee1, employee2 = Employee.new, Employee.new
# employee1.first_name, employee2.first_name = "Khurram", "Chang"
# employee1.last_name, employee2.first_name = "Virani", "Li"
# employee1.store, employee2.store = 1, 1
# employee1.hourly_rate, employee2.hourly_rate = 60, 80

# employee1.save
# employee2.save


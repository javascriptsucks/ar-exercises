require_relative '../setup'
# require '../lib/employee'
# require '../lib/store'
puts "Exercise 1"
puts "----------"

# Your code goes below here ...
@store1, @store2, @store3 = Store.new, Store.new, Store.new
@store1.name, @store2.name, @store3.name = "Burnaby", "Richmond", "Gastown"
@store1.annual_revenue, @store2.annual_revenue, @store3.annual_revenue = 300000, 1260000, 190000

@store1.mens_apparel = true
@store1.womens_apparel, @store2.mens_apparel, @store2.womens_apparel, @store3.mens_apparel, @store3.womens_apparel = true, false, true, true, false


@store1.save
@store2.save
@store3.save
p @store1
p @store2


@stores = Store.all
p @stores.count

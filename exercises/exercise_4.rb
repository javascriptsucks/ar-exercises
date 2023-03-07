require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store1, store2, store3 = Store.new, Store.new, Store.new
store1.name, store2.name, store3.name = "Surrey", "Whistler", "Yaletown"
store1.annual_revenue, store2.annual_revenue, store3.annual_revenue = 224000, 1900000, 430000

store1.mens_apparel = false
store1.womens_apparel, store2.mens_apparel, store2.womens_apparel, store3.mens_apparel, store3.womens_apparel = true, true, false, true, true


store1.save
store2.save
store3.save

stores = Store.all
p stores.count

mens_stores = Store.where(mens_apparel: true)
mens_stores.each do |store|
  puts "The store #{store.name} sell #{store.annual_revenue} dollars each year. "
end

womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

womens_stores.each do |store|
  puts "The store #{store.name} sell #{store.annual_revenue} dollars each year. "
end
p womens_stores

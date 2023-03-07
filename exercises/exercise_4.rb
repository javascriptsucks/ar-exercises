require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4, store5, store6 = Store.new, Store.new, Store.new
store4.name, store5.name, store6.name = "Surrey", "Whistler", "Yaletown"
store4.annual_revenue, store5.annual_revenue, store6.annual_revenue = 224000, 1900000, 430000

store4.mens_apparel = false
store4.womens_apparel, store5.mens_apparel, store5.womens_apparel, store6.mens_apparel, store6.womens_apparel = true, true, false, true, true


store4.save
store5.save
store6.save

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

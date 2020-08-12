# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants"
pizzahut = { name:"pizzahut", address: "3625 east avn", category: "french" }
pandaexpress = { name:"pandaexpress", address: "273 central avn", category: "chinese" }
mac = { name:"mac", address: "sunset boulevard east", category: "italian" }
jose = { name:"jose", address: "277 rue bleury", category: "belgian" }
ganadara = { name:"ganadara", address: "544 rue bishop", category: "japanese"}

[ pizzahut, pandaexpress, mac, jose, ganadara ].each do |attr|
  restaurant = Restaurant.create!(attr)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Dishoom", address: "7 Boundary St, Covent Garden", category: "chinese" },
  { name: "Pizza East", address: "56A Shoreditch High St, Shoreditch", category: "italian" },
  { name: "Momo House", address: "13 London Road, Dalston", category: "belgian" },
  { name: "Jerk Chicken", address: "2 Jerk Street, Hoxton", category: "french" },
  { name: "Italian Food", address: "10 Italy Way, Little Italy", category: "italian" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

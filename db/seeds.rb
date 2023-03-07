# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting all users from database"
User.destroy_all

puts "Creating 6 new users"
User.create([
  { first_name: "justin", last_name: "chan", username: "justin1", email: "justin@chan.com", password: "123456" },
  { first_name: "charles", last_name: "chu", username: "charles2", email: "charles@chu.com", password: "123456" },
  { first_name: "sadio", last_name: "mane", username: "sadio3", email: "sadio@chan.com", password: "123456" },
  { first_name: "mo", last_name: "salah", username: "mo4", email: "mo@salah.com", password: "123456" },
  { first_name: "steven", last_name: "gerrard", username: "steven5", email: "steven@gerrard.com", password: "123456" },
  { first_name: "lewis", last_name: "hamilton", username: "lewis6", email: "lewis@hamilton.com", password: "123456" }
])

puts "Created 6 users"

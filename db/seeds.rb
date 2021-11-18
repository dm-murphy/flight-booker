# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.destroy_all

airports = Airport.create([{ name: 'SFO'}, { name: 'JFK'}, { name: 'EWR'}, {name: 'ORD'}])

p "Can you see the first airport? #{airports.first.name}"
p "How about the last? #{airports.last.name}"
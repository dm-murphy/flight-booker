# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airport.delete_all
Flight.delete_all

airports = Airport.create([{ name: 'SFO'}, { name: 'JFK'}, { name: 'EWR'}, {name: 'ORD'}])

p "Can you see first airport as object? #{airports.first}"
p "Can you see the first airport? #{airports.first.name}"
p "How about the last? #{airports.last.name}"
p "First airport id? #{airports.first.id}"
p "Last airport id? #{airports.last.id}"

# flights = Flight.create(takeoff: '2021-12-9T04:05:06+00:00', departing_airport_id: 19, arriving_airport_id: 22)
flights = Flight.create!([{
            departing_airport_id: Airport.find_by!(name: "SFO").id,
            arriving_airport_id: Airport.find_by!(name: "ORD").id
          }])

p "Can you see the first flight? #{flights.first}"
p "First flight departing airport: #{flights.first.departing_airport_id}"
p "First flight arriving airport: #{flights.first.arriving_airport_id}"
p "Can you see the airport object for first flight departing airport: #{Airport.find_by!(id: flights.first.departing_airport_id)}"
p "Does it match the airport found by name? #{Airport.find_by!(name: "SFO")}"
p "Does it match the airport found by AGAIN name? #{Airport.find_by!(name: "SFO")}"

p "How about just saying departing airport! and getting its name? #{flights.first.departing_airport.name}"

class Airport < ApplicationRecord
  has_many :flights
  # has_many :departing_flights, foreign_key: :departing_airport_id, class_name: "Flight"
  # has_many :arriving_flights, foreign_key: :arriving_airport_id, class_name: "Flight"
  has_many :departing_flights, through: :bookings, source: :flight
  has_many :arriving_flights, through: :bookings, source: :flight
end

FactoryBot.define do
  factory :flight do
    departing_airport_id { 1 }
    arriving_airport_id { 2 }
    takeoff_date { '2022-02-13 12:12:29.891336 -0500' }
    takeoff_time { '11:02:01+00:00' }
    duration { 325 }
  end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
Flight.delete_all

airports = Airport.create([{ name: 'SFO' }, { name: 'JFK' }, { name: 'ORD' }, { name: 'ATL' }])

flights = Flight.create!([
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '13:12:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '11:02:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '20:16:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '13:12:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '11:02:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '20:16:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '11:14:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '20:36:01+00:00',
              duration: 325
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '08:15:01+00:00',
              duration: 260
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '14:15:01+00:00',
              duration: 260
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '20:05:01+00:00',
              duration: 260
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '08:15:01+00:00',
              duration: 260
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '14:15:01+00:00',
              duration: 260
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '20:05:01+00:00',
              duration: 260
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '10:07:01+00:00',
              duration: 260
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '09:15:01+00:00',
              duration: 270
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '16:15:01+00:00',
              duration: 270
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '22:05:01+00:00',
              duration: 270
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '09:15:01+00:00',
              duration: 270
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '16:15:01+00:00',
              duration: 270
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '22:05:01+00:00',
              duration: 270
            },
            {
              departing_airport_id: Airport.find_by!(name: "SFO").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '12:05:01+00:00',
              duration: 270
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '06:12:01+00:00',
              duration: 410
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '12:13:01+00:00',
              duration: 410
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '22:01:01+00:00',
              duration: 410
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '06:12:01+00:00',
              duration: 410
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '12:13:01+00:00',
              duration: 410
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '22:01:01+00:00',
              duration: 410
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '08:15:01+00:00',
              duration: 175
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '14:15:01+00:00',
              duration: 175
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '20:05:01+00:00',
              duration: 175
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '08:15:01+00:00',
              duration: 175
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '14:15:01+00:00',
              duration: 175
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '11:17:01+00:00',
              duration: 175
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '20:05:01+00:00',
              duration: 175
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '10:25:01+00:00',
              duration: 160
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '16:34:01+00:00',
              duration: 160
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '08:13:01+00:00',
              duration: 160
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '10:25:01+00:00',
              duration: 160
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '16:34:01+00:00',
              duration: 160
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '08:13:01+00:00',
              duration: 160
            },
            {
              departing_airport_id: Airport.find_by!(name: "JFK").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '18:26:01+00:00',
              duration: 160
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '07:15:01+00:00',
              duration: 290
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '12:11:01+00:00',
              duration: 290
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '18:05:01+00:00',
              duration: 290
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '07:15:01+00:00',
              duration: 290
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '12:11:01+00:00',
              duration: 290
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '08:05:01+00:00',
              duration: 290
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '18:19:01+00:00',
              duration: 290
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '11:16:01+00:00',
              duration: 135
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '16:01:01+00:00',
              duration: 135
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '18:45:01+00:00',
              duration: 135
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '11:16:01+00:00',
              duration: 135
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '16:01:01+00:00',
              duration: 135
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '08:45:01+00:00',
              duration: 135
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '18:03:01+00:00',
              duration: 135
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '11:14:01+00:00',
              duration: 120
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '13:42:01+00:00',
              duration: 120
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '18:01:01+00:00',
              duration: 120
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '11:14:01+00:00',
              duration: 120
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '13:42:01+00:00',
              duration: 120
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '08:01:01+00:00',
              duration: 120
            },
            {
              departing_airport_id: Airport.find_by!(name: "ORD").id,
              arriving_airport_id: Airport.find_by!(name: "ATL").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '18:13:01+00:00',
              duration: 120
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '07:35:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '12:15:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '19:25:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '07:35:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '12:15:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '09:25:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "SFO").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '17:25:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '17:37:01+00:00',
              duration: 130
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '11:05:01+00:00',
              duration: 130
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '10:25:01+00:00',
              duration: 130
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '17:37:01+00:00',
              duration: 130
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '11:05:01+00:00',
              duration: 130
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '10:25:01+00:00',
              duration: 130
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "JFK").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '21:25:01+00:00',
              duration: 130
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '09:35:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '15:12:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 1.days,
              takeoff_time: '20:45:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '09:35:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 3.days,
              takeoff_time: '15:12:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '06:45:01+00:00',
              duration: 320
            },
            {
              departing_airport_id: Airport.find_by!(name: "ATL").id,
              arriving_airport_id: Airport.find_by!(name: "ORD").id,
              takeoff_date: Time.zone.now + 5.days,
              takeoff_time: '20:06:01+00:00',
              duration: 320
            }
          ])

class Flight < ApplicationRecord
  belongs_to :departing_airport, class_name: "Airport", foreign_key: "departing_airport_id"
  belongs_to :arriving_airport, class_name: "Airport", foreign_key: "arriving_airport_id"

  has_many :passengers, through: :bookings
  has_many :bookings

  def takeoff_date_formatted
    takeoff_date.strftime("%a %m/%d/%Y")
  end

  def takeoff_time_formatted
    takeoff_time.strftime("%l:%M %p")
  end

  def duration_formatted
    hours = duration / 60
    minutes = duration % 60
    "#{hours} hours #{minutes} minutes"
  end
end

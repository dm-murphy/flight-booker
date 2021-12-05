class Flight < ApplicationRecord
  belongs_to :departing_airport, class_name: "Airport", foreign_key: "departing_airport_id"
  belongs_to :arriving_airport, class_name: "Airport", foreign_key: "arriving_airport_id"

  def takeoff_date_formatted
    takeoff.strftime("%a %m/%d/%Y")
  end
end

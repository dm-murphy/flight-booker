class Flight < ApplicationRecord
  belongs_to :departing_airport, foreign_key: :airport_id, class_name: "Airport"
  belongs_to :arriving_airport, foreign_key: :airport_id, class_name: "Airport"
end

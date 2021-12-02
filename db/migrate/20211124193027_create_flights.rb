class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.bigint :duration
      t.datetime :takeoff
      t.bigint :departing_airport_id
      t.bigint :arriving_airport_id

      t.timestamps
    end
  end
end

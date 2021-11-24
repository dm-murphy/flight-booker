class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.time :duration
      t.datetime :takeoff

      t.timestamps
    end
  end
end

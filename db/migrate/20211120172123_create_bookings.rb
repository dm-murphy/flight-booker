class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight
      t.references :airport

      t.timestamps
    end
  end
end

class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :station
      t.string :name
      t.string :time

      t.timestamps
    end
  end
end

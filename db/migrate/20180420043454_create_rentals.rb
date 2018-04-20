class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.integer :bike_id
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.text :start_station
      t.text :end_station
      t.float :cost

      t.timestamps
    end
  end
end

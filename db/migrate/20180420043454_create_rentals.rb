class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.integer :bike_id
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :start_stand_id
      t.integer :end_stand_id
      t.float :cost

      t.timestamps
    end
  end
end

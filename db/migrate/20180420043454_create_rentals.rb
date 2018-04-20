class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.integer :bike_id
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.text :start_stand_id
      t.text :end_stand_id
      t.float :cost

      t.timestamps
    end
  end
end

class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :bike_serial_num
      t.integer :bikestand_id
      t.boolean :available
      t.timestamps
    end
  end
end

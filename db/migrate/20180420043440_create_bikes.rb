class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :bike_serial_num
      t.integer :bikestand_id
      t.boolean :available
<<<<<<< HEAD

=======
>>>>>>> a700a0262119f2a4fc4a48287b834665116f4a7b
      t.timestamps
    end
  end
end

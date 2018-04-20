class CreateBikestands < ActiveRecord::Migration[5.1]
  def change
    create_table :bikestands do |t|
      t.text :location
      t.text :bikestand_long
      t.text :bikestand_lat

      t.timestamps
    end
  end
end

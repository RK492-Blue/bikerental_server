class ChangeTextToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :bikestands, :bikestand_long, 'float USING CAST(bikestand_long as FLOAT)'
    change_column :bikestands, :bikestand_lat, 'float USING CAST (bikestand_lat as FLOAT)'
  end
end

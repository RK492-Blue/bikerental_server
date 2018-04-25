class ChangeTextToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :bikestands, :bikestand_long, 'float USING bikestand_long::double precision'
    change_column :bikestands, :bikestand_lat, 'float USING bikestand_lat::double precision'
  end
end

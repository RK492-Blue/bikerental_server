class ChangeBikestandlonglat < ActiveRecord::Migration[5.1]
  def change
    rename_column :bikestands, :bikestand_long, :longitude
    rename_column :bikestands, :bikestand_lat, :latitude
  end
end

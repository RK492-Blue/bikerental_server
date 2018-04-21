# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "bikes", force: :cascade do |t|
#   t.string "bike_serial_num"
#   t.integer "bikestand_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "bikestands", force: :cascade do |t|
#   t.text "location"
#   t.text "bikestand_long"
#   t.text "bikestand_lat"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end


Bike.destroy_all
b1 = Bike.create(:bike_serial_num => 'A1', :bikestand_id => 1)
b2 = Bike.create(:bike_serial_num => 'A2', :bikestand_id => 2)
b3 = Bike.create(:bike_serial_num => 'B2', :bikestand_id => 3)
b4 = Bike.create(:bike_serial_num => 'B1', :bikestand_id => 4)
b5 = Bike.create(:bike_serial_num => 'C1', :bikestand_id => 5)
b6 = Bike.create(:bike_serial_num => 'C2', :bikestand_id => 6)
b7 = Bike.create(:bike_serial_num => 'C3', :bikestand_id => 7)
b8 = Bike.create(:bike_serial_num => 'A1', :bikestand_id => 8)
b9 = Bike.create(:bike_serial_num => 'B2', :bikestand_id => 9)
b10 = Bike.create(:bike_serial_num => 'A3', :bikestand_id => 10)

BikeStand.destroy_all
s1 = BikeStand.create(:location => '1 Market Street', :bikestand_long => 151.204644, :bikestand_lat => -33.871322)
s2 = BikeStand.create(:location => 'George Street', :bikestand_long => 151.206944, :bikestand_lat => -33.870206)
s3 = BikeStand.create(:location => 'York Street', :bikestand_long => 151.205735, :bikestand_lat => -33.866269)
s4 = BikeStand.create(:location => 'Oxford Street', :bikestand_long => 151.212091, :bikestand_lat => -33.876948)
s5 = BikeStand.create(:location => 'Bourke Street', :bikestand_long => 151.215337, :bikestand_lat => -33.887130)
s6 = BikeStand.create(:location => 'Steel Street', :bikestand_long => 151.211315, :bikestand_lat => -33.887415)
s7 = BikeStand.create(:location => 'St James Street', :bikestand_long => 151.155303, :bikestand_lat => -33.876621)
s8 = BikeStand.create(:location => 'William Street', :bikestand_long => 151.220333, :bikestand_lat => -33.875070)
s9 = BikeStand.create(:location => 'Hunt Street', :bikestand_long => 151.218912, :bikestand_lat => -33.879783)

b1.BikeStand << s1
b2.BikeStand << s2
b3.BikeStand << s1
b4.BikeStand << s5
b5.BikeStand << s3
b7.BikeStand << s2
b9.BikeStand << s8

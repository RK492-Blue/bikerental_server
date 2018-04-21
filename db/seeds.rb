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

Bikestand.destroy_all
s1 = Bikestand.create(:location => '1 Market Street', :bikestand_long => 151.204644, :bikestand_lat => -33.871322)
s2 = Bikestand.create(:location => 'George Street', :bikestand_long => 151.206944, :bikestand_lat => -33.870206)
s3 = Bikestand.create(:location => 'York Street', :bikestand_long => 151.205735, :bikestand_lat => -33.866269)
s4 = Bikestand.create(:location => 'Oxford Street', :bikestand_long => 151.212091, :bikestand_lat => -33.876948)
s5 = Bikestand.create(:location => 'Bourke Street', :bikestand_long => 151.215337, :bikestand_lat => -33.887130)
s6 = Bikestand.create(:location => 'Steel Street', :bikestand_long => 151.211315, :bikestand_lat => -33.887415)
s7 = Bikestand.create(:location => 'St James Street', :bikestand_long => 151.155303, :bikestand_lat => -33.876621)
s8 = Bikestand.create(:location => 'William Street', :bikestand_long => 151.220333, :bikestand_lat => -33.875070)
s9 = Bikestand.create(:location => 'Hunt Street', :bikestand_long => 151.218912, :bikestand_lat => -33.879783)

# User.destroy_all
# u1 = User.create :email => 'harpo@co.au', :password => 'chicken'
# u2 = User.create :email => 'katty@co.in', :password => 'chicken'

# s1.Bikestand << b1
# b2.Bikestand << s2
# b3.Bikestand << s1
# b4.Bikestand << s5
# b5.Bikestand << s3
# b7.Bikestand << s2
# b9.Bikestand << s8

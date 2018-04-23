# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Bike.destroy_all
b1 = Bike.create(:bike_serial_num => 'A1', :bikestand_id => 1, :available => true)
b2 = Bike.create(:bike_serial_num => 'A2', :bikestand_id => 2, :available => true)
b3 = Bike.create(:bike_serial_num => 'B2', :bikestand_id => 3, :available => true)
b4 = Bike.create(:bike_serial_num => 'B1', :bikestand_id => 4, :available => true)
b5 = Bike.create(:bike_serial_num => 'C1', :bikestand_id => 5, :available => true)
b6 = Bike.create(:bike_serial_num => 'C2', :bikestand_id => 6, :available => true)
b7 = Bike.create(:bike_serial_num => 'C3', :bikestand_id => 7, :available => true)
b8 = Bike.create(:bike_serial_num => 'D1', :bikestand_id => 8, :available => true)
b9 = Bike.create(:bike_serial_num => 'D2', :bikestand_id => 9, :available => true)
b10 = Bike.create(:bike_serial_num => 'D3', :bikestand_id => 10, :available => true)
b11 = Bike.create(:bike_serial_num => 'E1', :bikestand_id => 11, :available => true)
b12 = Bike.create(:bike_serial_num => 'E2', :bikestand_id => 12, :available => true)
b13 = Bike.create(:bike_serial_num => 'E3', :bikestand_id => 13, :available => true)
b14 = Bike.create(:bike_serial_num => 'E4', :bikestand_id => 14, :available => true)
b15 = Bike.create(:bike_serial_num => 'E5', :bikestand_id => 15, :available => true)
b16 = Bike.create(:bike_serial_num => 'E6', :bikestand_id => 16, :available => true)


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


s1.bikes << b1 << b3
s2.bikes << b5 << b7
s3.bikes << b4 << b2
s4.bikes << b8
s5.bikes << b9 << b12
s6.bikes << b10
s7.bikes << b13 << b15
s8.bikes << b6 << b11 << b14
s9.bikes << b16

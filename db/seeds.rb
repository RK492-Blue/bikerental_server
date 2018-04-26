# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Bike.destroy_all
b1 = Bike.create(:bike_serial_num => 'A1472', :bikestand_id => 1, :available => true)
b2 = Bike.create(:bike_serial_num => 'A2235', :bikestand_id => 2, :available => true)
b3 = Bike.create(:bike_serial_num => 'B2351', :bikestand_id => 3, :available => true)
b4 = Bike.create(:bike_serial_num => 'B1236', :bikestand_id => 4, :available => true)
b5 = Bike.create(:bike_serial_num => 'C1964', :bikestand_id => 5, :available => true)
b6 = Bike.create(:bike_serial_num => 'C2551', :bikestand_id => 6, :available => true)
b7 = Bike.create(:bike_serial_num => 'C3992', :bikestand_id => 7, :available => true)
b8 = Bike.create(:bike_serial_num => 'D1134', :bikestand_id => 8, :available => true)
b9 = Bike.create(:bike_serial_num => 'D2441', :bikestand_id => 9, :available => true)
b10 = Bike.create(:bike_serial_num => 'D3902', :bikestand_id => 3, :available => true)
b11 = Bike.create(:bike_serial_num => 'B1351', :bikestand_id => 5, :available => true)
b12 = Bike.create(:bike_serial_num => 'A2288', :bikestand_id => 2, :available => true)
b13 = Bike.create(:bike_serial_num => 'C3232', :bikestand_id => 4, :available => true)
b14 = Bike.create(:bike_serial_num => 'A4167', :bikestand_id => 3, :available => true)
b15 = Bike.create(:bike_serial_num => 'B5893', :bikestand_id => 1, :available => true)
b16 = Bike.create(:bike_serial_num => 'D6593', :bikestand_id => 9, :available => true)


Bikestand.destroy_all
s1 = Bikestand.create(:location => '1 Market Street, Sydney', :longitude => 151.204644, :latitude => -33.871322)
s2 = Bikestand.create(:location => 'George Street, Sydney', :longitude => 151.206944, :latitude => -33.870206)
s3 = Bikestand.create(:location => 'York Street, Sydney', :longitude => 151.205735, :latitude => -33.866269)
s4 = Bikestand.create(:location => 'Oxford Street, Sydney', :longitude => 151.212091, :latitude => -33.876948)
s5 = Bikestand.create(:location => 'Bourke Street, Sydney', :longitude => 151.215337, :latitude => -33.887130)
s6 = Bikestand.create(:location => 'Steel Street, Sydney', :longitude => 151.211315, :latitude => -33.887415)
s7 = Bikestand.create(:location => 'St James Street, Sydney', :longitude => 151.155303, :latitude => -33.876621)
s8 = Bikestand.create(:location => 'William Street, Sydney', :longitude => 151.220333, :latitude => -33.875070)
s9 = Bikestand.create(:location => 'Hunt Street, Sydney', :longitude => 151.218912, :latitude => -33.879783)

User.destroy_all
u1 = User.create(:name => 'Joel', :email => 'joel@co.au', :password => 'joel', :user_type => 'admin')
u2 = User.create(:name => 'Winnie', :email => 'winnie@co.au', :password => 'winnie', :user_type => 'user')
u3 = User.create(:name => 'Ricky', :email => 'ricky@co.au', :password => 'ricky', :user_type => 'user')
u4 = User.create(:name => 'Gurdeep', :email => 'gurdeep@co.au', :password => 'gurdeep', :user_type => 'user')
u5 = User.create(:name => 'Meena', :email => 'meena@co.au', :password => 'meena', :user_type => 'user')

s1.bikes << b1 << b3
s2.bikes << b5 << b7
s3.bikes << b4 << b2
s4.bikes << b8
s5.bikes << b9 << b12
s6.bikes << b10
s7.bikes << b13 << b15
s8.bikes << b6 << b11 << b14
s9.bikes << b16

Rental.destroy_all

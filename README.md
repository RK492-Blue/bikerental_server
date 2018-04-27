# Project - BikeSharing App
 This is a bike sharing app where registered users can rent a bike from select locations around the city (bikestands) and return the bike in the same or another location.

Check out the [Bike Sharing App](https://bsharegawdi26.herokuapp.com/)


![BikeSharing Screenshot](https://github.com/RK492-Blue/bikerental_server/tree/master/app/assets/images/bikeshare.png)
<br/>

## Getting Started

The application has 3 levels of access.
* Regular users can view general information about bike locations.
* Signed in users can start renting bikes.
* Administrators can access all sections of the application to create new bikes, bike locations and view all rentals by all users.

### App Features:

* User level access restrictions to different parts of the application and to different options within each page.
* Users are restricted to only view details of their current rentals and rental history.
* Administrators can create new bikes and bike locations.
* Google maps interface to view bike locations to help users make bookings for their bikes.
* Payment for the bike rental can be made through Strike.

### Models used:
There are four models: User, Bikestand, Bike and Rentals.

### Bits of code:
Here is a sample for relationships between the models:
```
class Rental < ApplicationRecord
  belongs_to :bike, :optional =>true
  belongs_to :user, :optional =>true
  belongs_to :start_stand, :class_name => "Bikestand", optional: true,
    :foreign_key => "start_stand_id"
  belongs_to :end_stand, :class_name => "Bikestand", optional: true,
    :foreign_key => "end_stand_id"

```

### Possible Improvements:
  * Add BikeModel for better inventory control.
  * React Integration

### Built With:
 * [RubyOnRails](http://rubyonrails.org/)
 * HTML and CSS
 * [Heroku](https://devcenter.heroku.com/)
 * Postgresql

### Gems/APIs used:

 * bcrypt gem for authentication
 * geocoder gem for geolocation
 * stripe gem for payment


### JQuery plugin

 * DateTimePicker

### Complimentary tools:
 * Trello
 * Photoshop

### Special thanks to:
 * Joel Turnbull for all his assistance and guidance throughout the project
 * Our amazing TA's - John and Theo

### Team Members (alphabetical order)
This is our amazing team who worked hard together co-operatively:

 * Gurudeep, Meena, Rickyliew, Winnie

### License
This project is licensed under the MIT license.

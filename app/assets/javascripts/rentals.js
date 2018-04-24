
// Time difference
const rate = 1; // per hour
const calculateCost = function(start, end){

}

$(document).ready(function () {
  $('#rental_end_time, #rental_start_time').datetimepicker()
  $('#rental_end_time, #rental_start_time').val('12/01/2016');
  $('#rental_end_time, #rental_start_time')
    .datetimepicker('show')
    .datetimepicker('reset')
});

// const searchLocation = function(){
//
//   const locationURL = 'https:maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY'
//
// }

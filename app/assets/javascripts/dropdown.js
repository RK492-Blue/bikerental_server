// jQuery(function() {
//   let bikes;
//   bikes = $('#rental_bike_id').html();
//   console.log(bikes);
//   return $('#rental_start_stand_id').change(function() {
//     let bikestand, options;
//     bikestand = $('#rental_start_stand_id :selected').text();
//     options = $(bikes).filter("optgroup[label=" + bikestand + "]").html();
//     console.log(options);
//     if (options) {
//       return $('#rental_bike_id').html(options);
//     } else {
//       return $('#rental_bike_id').empty();
//     }
//   });
// });

//
$(document).ready(function(){


$('#end_time').on('change',function()
{
  let start_time = $('#start_time').val();
  let end_time = $('#end_time').val();

    let diff =  new Date(end_time) - new Date( start_time);

  $('#setup_hours').val(diff);
});
});

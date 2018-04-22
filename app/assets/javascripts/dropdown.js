jQuery(function() {
  let bikes;
  bikes = $('#rental_bike_id').html();
  console.log(bikes);
  return $('#rental_start_stand_id').change(function() {
    let bikestand, options;
    bikestand = $('#rental_start_stand_id :selected').text();
    options = $(bikes).filter("optgroup[label=" + bikestand + "]").html();
    console.log(options);
    if (options) {
      return $('#rental_bike_id').html(options);
    } else {
      return $('#rental_bike_id').empty();
    }
  });
});

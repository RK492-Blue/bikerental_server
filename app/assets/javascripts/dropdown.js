
$(document).ready(function () {
  $('.bikes').hide().attr('disabled', true);
  $('[name="rental[start_stand_id]"]').on('change', function () {
    const standID = $(this).val();
    $('.bikes').hide().attr('disabled', true);
    $('#bikestand_' + standID).fadeIn().attr('disabled', false);
  })
});

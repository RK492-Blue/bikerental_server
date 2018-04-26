
$(document).ready(function () {
  $('.bikelabel').hide().attr('disabled', true);
  $('.bikes').hide().attr('disabled', true);
  $('[name="rental[start_stand_id]"]').on('change', function () {
    const standID = $(this).val();
    $('.bikes').hide().attr('disabled', true);
    $('.bikelabel').fadeIn().attr('disabled', false);

    $('#bikestand_' + standID).fadeIn().attr('disabled', false);
  })



});

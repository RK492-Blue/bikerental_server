
// // Time difference
// const rate = 1; // per hour

$(document).ready(function () {
  $('#rental_end_time, #rental_start_time').datetimepicker(
    {
     minDate:0,//yesterday is minimum date(for today use 0 or -1970/01/01)
     maxDate:'+1970/01/07',//tomorrow is maximum date calendar
     minTime:0// time starts from now
    }
  )
});

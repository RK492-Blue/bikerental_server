

function msToTime(s) {
  var ms = s % 1000;
  s = (s - ms) / 1000;
  var secs = s % 60;
  s = (s - secs) / 60;
  var mins = s % 60;
  var hrs = (s - mins) / 60;

  //return hrs + ':' + mins + ':' + secs + '.' + ms;
  return hrs
}

$(document).ready(function () {
  let startTime = $("input#rental_start_time").val();
  let rentalTime = $("input#rental_cost");
  let endTime = "";
  let timeDiff="";
  $("input#rental_end_time").change(function(){
    //console.log($("input#rental_end_time").val());
    //console.log(Date.parse($("input#rental_end_time").val()));
    let endTime = Date.parse($("input#rental_end_time").val());
    //console.log(endTime);
    //console.log(Date.parse(startTime));

    timeDiff = msToTime(endTime - Date.parse(startTime));
    rentalTime.val(timeDiff *2);
    console.log(timeDiff);
  })

})

//= require admin/spree_backend
//= require admin/jquery-timer

$(document).ready(function(){
  // show datetimepicker
  $("#start_date").focusin(function () {
    var currentTime = new Date(),
    currrnt_hours = currentTime.getHours(),
    current_minutes = currentTime.getMinutes();
     $(this).datetimepicker({ dateFormat: "yy-mm-dd",
                              hour: currrnt_hours,
                              minute: current_minutes});
  });

  $("#end_date").focusin(function () {
     var currentTime = new Date(),
     currrnt_hours = currentTime.getHours(),
     current_minutes = currentTime.getMinutes();
     $(this).datetimepicker({ dateFormat: "yy-mm-dd",
                              hour: currrnt_hours,
                              minute: current_minutes});

  });
});

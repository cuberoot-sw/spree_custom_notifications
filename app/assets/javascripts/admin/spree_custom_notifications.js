//= require admin/spree_backend

$(document).ready(function(){
  // show datepicker
  $("#start_date").focusin(function () {
     $(this).datepicker({ altField: "#"+$(this).attr('id'),altFormat: "yy-mm-dd"});
  });

  $("#end_date").focusin(function () {
     $(this).datepicker({ altField: "#"+$(this).attr('id'),altFormat: "yy-mm-dd"});
  });
});

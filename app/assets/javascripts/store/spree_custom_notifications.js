//= require store/spree_frontend
// code to close notification div on click of close image
$(document).ready(function(){
  $("#close_img").click(function() {
     $("ul#notification_list").slideUp();
  });
});

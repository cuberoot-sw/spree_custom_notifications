//= require store/spree_frontend
// code to close notification div on click of close image
$(document).ready(function(){
  $("#close_img").click(function() {
    $.ajax({
        async: "false",
        url: '/destroy_notification',
        type: "GET",
        data: {},
        dataType: "json",
        success: function (result) {
        }
      });

     $("ul#notification_list").slideUp();
  });
});

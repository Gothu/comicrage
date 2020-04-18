$(document).on('turbolinks:load', function(){
  $('#modal-open-btn').on('click', function(e) {
    e.preventDefault();
    $('#overlay').fadeIn("fast");
    document.getElementById('modal-close-btn').onclick = function () {
      $('#overlay').fadeOut("fast");
    };
    document.getElementById("delete-comformation-btn").onclick = function () {
      document.getElementById("item-delete-btn").click();
    };
  });
  false
});
/*
  *
  * TODO: add your code here!
  *
*/

$(function() {
 $('#message').delay(500).slideDown('slow', function(e) {
   $(this).on('click', function() {
     $(this).fadeOut(500);
   });
 });


  $("#message-wrapper")
    .mouseenter(function() {
      $('#message').slideDown('slow');
    })
    .mouseleave(function() {
      $('#message').slideUp('slow');
    });
});
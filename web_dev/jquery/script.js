// script.js

// Test
// $(function(){
//       alert("JQuery is working!");
// });

// Change css styling of duck photo from hidden to visible with button click
$(function(){
  $('button').on('click', function() {
    $('#duck-photo').fadeToggle(500).css('display', 'inline');
  });
});
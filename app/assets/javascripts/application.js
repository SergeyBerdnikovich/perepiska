// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree .

$(document).ready(function(){
  $('div.emails a').click(function(){
    var id = $(this).attr("id");
    $.get('main/get_messages', { email_id: id });
  })
  $(document).on("click","div.email_messages a",function(e){
    var id = $(this).attr("id");
    $.get('main/get_message_body', { message_id: id });
  });
  $('div.admin_panel a').click(function(){
    var id = $(this).attr("id");
    $.get('main/get_admin_panel', { admin_panel_id: id });
  })
});
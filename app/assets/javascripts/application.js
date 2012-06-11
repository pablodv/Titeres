//= require jquery
//= require jquery_ujs
// require "foundation"
//= require jquery.mousewheel-3.0.4.pack
//= require jquery.fancybox-1.3.4.pack

$(document).ready(function() {
  $("a#galleries").fancybox({'width' : '200'});
   $("div.transparent").height($(document).height());
});

function showGallery() {
  $("a.fancybox").click(function(event) {
    event.preventDefault();

    $.ajax({
      type  : "GET",
      cache : false,
      url   : $(this).attr('href'),
      success: function(data) {
        $.fancybox(data, {});
      }
    });

    event.stopPropagation();
  });
}

function openGallery() {
  $("a[rel=group]").fancybox({});
}
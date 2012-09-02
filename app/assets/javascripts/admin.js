//= require jquery
//= require jquery_ujs
//= require admin/plupload.full
//= require admin/jquery.plupload.queue

$(document).ajaxSend(function(e, xhr, options) {
  var token = $("meta[name='csrf-token']").attr("content");
  xhr.setRequestHeader("X-CSRF-Token", token);
});

$(document).ready(function() {
  initPlupload()
});

function initPlupload() {
  var atoken = $("input[name=authenticity_token]").val();

  $("#uploader").pluploadQueue({
    // General settings
    runtimes : 'gears,flash,silverlight,browserplus,html5',
    url : '/admin/galleries/' + $('#gallery_id').val() + '/gallery_images',
    // max_file_size : '20mb',
    // chunk_size : '10mb',
    // unique_names : true,
    multipart: true,
    multipart_params : {authenticity_token : atoken},

    // Resize images on clientside if we can
    resize : { width : 320, height : 240, quality : 90 },

    // Specify what files to browse for
    filters : [
      {title : "Image files", extensions : "jpg,gif,png"}
    ],

     // Flash settings
    flash_swf_url : '/assets/admin/plupload.flash.swf',

    // Silverlight settings
    silverlight_xap_url : '/assets/admin/plupload.silverlight.xap',

    init: {
      FileUploaded: function(up, file, info) {
        var json_response = eval('(' + info.response + ')');
        $('div.panel').append('<img src=' + json_response.src + '/>')
      }

    }
  });
}

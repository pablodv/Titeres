$("#<%= @resource.id %>").attr('href', '<%= determinate_path(@resource) %>')
$("#<%= @resource.id %>").text('<%= @resource.published ? "Unpublish" : "Publish" %>')

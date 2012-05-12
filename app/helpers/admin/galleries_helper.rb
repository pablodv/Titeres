module Admin::GalleriesHelper
  def determinate_path(resource)
    if resource.published
      unpublish_admin_gallery_path(resource)
    else
      publish_admin_gallery_path(resource)
    end
  end
end

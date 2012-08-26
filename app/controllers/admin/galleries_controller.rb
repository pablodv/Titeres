class Admin::GalleriesController < InheritedResources::Base
  before_filter :authenticate_admin!

  layout "admin"

  def create
    create! do |success, failure|
      success.html { redirect_to edit_admin_gallery_path(resource) }
      failure.html { render "new" }
    end
  end

  def update
    update!{ collection_path }
  end

  def publish
    @resource = resource
    @resource.publish!
    render 'publishing'
  end

  def unpublish
    @resource = resource
    @resource.unpublish!
    render 'publishing'
  end
end

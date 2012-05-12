class Admin::GalleriesController < InheritedResources::Base
  before_filter :authenticate_admin!

  layout "admin"

  def create
    create!{ collection_path }
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

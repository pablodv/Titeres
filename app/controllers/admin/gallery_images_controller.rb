class Admin::GalleryImagesController < InheritedResources::Base
  skip_before_filter :verify_authenticity_token

  before_filter :authenticate_admin!

  def create
    unless params[:file].blank?
      @gallery_image = GalleryImage.create_image(params[:file], params[:gallery_id])

      @gallery_image.save
    end

    render :nothing => true
  end
end

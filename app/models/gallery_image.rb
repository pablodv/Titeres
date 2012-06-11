class GalleryImage < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :image,
    :styles => {
      :thumb => "75x75#",
      :small => "100x100#"
    }

  validates_attachment :image, :presence => true,
    :content_type => { :content_type => ['image/jpg', 'image/jpeg', 'image/pjpeg',
    'image/gif', 'image/png', 'image/x-png'] }

  def self.create_image(file, gallery_id)
    create(:image  => file, :gallery_id => gallery_id)
  end
end

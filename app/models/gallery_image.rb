class GalleryImage < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :image,
    :styles => {
      :thumb => "75x75#",
      :small => "230x148#"
    },
    :url  => "galleries/:id/:style/:filename",
    :path => ":rails_root/app/assets/images/galleries/:id/:style/:filename"

  validates_attachment :image, :presence => true,
    :content_type => { :content_type => ['image/jpg', 'image/jpeg', 'image/pjpeg',
    'image/gif', 'image/png', 'image/x-png'] }

  def self.create_image(file, gallery_id)
    create(:image  => file, :gallery_id => gallery_id)
  end
end

class Gallery < ActiveRecord::Base
  has_many :gallery_images, :dependent => :destroy
  has_one  :first_image,  :class_name => "GalleryImage"

  validates :name, :presence => true

  scope :published, where(:published => true)

  def publish!
    update_attribute :published, true
  end

  def unpublish!
    update_attribute :published, false
  end

  def images
    rtn = []

    gallery_images.each do |gi|
      rtn << gi.image if gi.image.file?
    end

    rtn
  end

  def first
    if first_image && first_image.image.file?
      first_image.image.url(:small)
    else
      "http://placehold.it/100x100"
    end
  end
end

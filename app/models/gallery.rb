class Gallery < ActiveRecord::Base
  has_many :gallery_images, :dependent => :destroy

  validates :name, :presence => true

  scope :publish, where(:published => true)

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
end

class Video < ActiveRecord::Base
  has_attached_file :mpeg,
    :url  => "videos/:id/:style/:filename",
    :path => ":rails_root/app/assets/images/videos/:id/:style/:filename"
  has_attached_file :ogg,
    :url  => "videos/:id/:style/:filename",
    :path => ":rails_root/app/assets/images/videos/:id/:style/:filename"

  validates_attachment_content_type :mpeg,
    :content_type => ['application/mp4', 'application/x-mp4',
      'video/mpeg', 'video/mp4'],
    :message => "solo se permiten archivos de video mpeg"
  validates_attachment_content_type :ogg,
    :content_type => ['video/ogg', 'application/ogg'],
    :message => "solo se permiten archivos de video ogg"

  scope :published, where(:published => true)

  def publish!
    update_attribute :published, true
  end

  def unpublish!
    update_attribute :published, false
  end
end

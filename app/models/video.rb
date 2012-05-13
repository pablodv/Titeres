class Video < ActiveRecord::Base
  has_attached_file :media

  validates_attachment :media, :presence => true
end

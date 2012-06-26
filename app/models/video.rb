class Video < ActiveRecord::Base
  has_attached_file :mpeg
  has_attached_file :ogg

  validates_attachment :mpeg, presence: true
  validates_attachment :ogg,  presence: true

  validates_attachment_content_type :mpeg,
    :content_type => ['application/mp3', 'application/x-mp3',
      'audio/mpeg', 'audio/mp3'],
    :message => "solo se permiten archivos de audio mpeg"
  validates_attachment_content_type :ogg,
    :content_type => ['audio/ogg', 'application/ogg'],
    :message => "solo se permiten archivos de audio ogg"

end

class Gallery < ActiveRecord::Base
  validates :name, :presence => true

  scope :publish, where(:published => true)

  def publish!
    update_attribute :published, true
  end

  def unpublish!
    update_attribute :published, false
  end
end

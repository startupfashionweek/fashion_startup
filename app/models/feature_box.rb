class FeatureBox < ActiveRecord::Base
  mount_uploader :feature_photo, FeaturePhotoUploader

  validates :name, presence: true
  validates :feature_photo,   presence: true
  validates :feature_content, presence: true

  def featured
    send(self.name)
  end

  def startup
    Feature.startup
  end

  def sponsor
    Feature.sponsor
  end

  def event
    EventSpotlight.first
  end

  def contest
    Contest.first
  end

end

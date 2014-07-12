class Sponsor < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  mount_uploader :cover_image, CoverImageUploader

  validates_presence_of :name, :description, :url, :cover_image, :logo
  validates_uniqueness_of :name
end

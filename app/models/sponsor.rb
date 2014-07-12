class Sponsor < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  mount_uploader :cover_image, CoverImageUploader

  vaildates_presence_of :name, :description, :url, :cover_image, :logo
  vaildates_uniqueness_of :name
end

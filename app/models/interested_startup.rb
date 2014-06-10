class InterestedStartup < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  mount_uploader :cover_image, CoverImageUploader
  validates_presence_of :name, :contactname, :email
  validates_uniqueness_of :name
end

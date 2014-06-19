class Sponsor < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  mount_uploader :cover_image, CoverImageUploader
end

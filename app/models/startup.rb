class Startup < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  mount_uploader :cover_image, CoverImageUploader

  validates_presence_of :name, :socialmedia_links, :short_description, :description, :logo
end

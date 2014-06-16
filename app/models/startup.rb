class Startup < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  mount_uploader :cover_image, CoverImageUploader

  validates_presence_of :name, :facebook_link, :advice, :elevator_pitch,
    :logo, :cover_image, :twitter_link, :challenge, :website

  validates_uniqueness_of :name


end

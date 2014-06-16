class InterestedStartup < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  mount_uploader :cover_image, CoverImageUploader
  validates_presence_of :name, :contactname, :email, :logo, :website, :facebook_link,
    :twitter_link, :advice, :elevator_pitch, :challenge, :cover_image
  validates_uniqueness_of :name
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end

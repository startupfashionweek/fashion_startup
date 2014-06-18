class Team < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end

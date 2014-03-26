class Startup < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
end

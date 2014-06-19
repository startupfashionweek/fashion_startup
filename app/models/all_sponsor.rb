class AllSponsor < ActiveRecord::Base
  mount_uploader :platinum, PlatinumUploader
  mount_uploader :gold, GoldUploader
  mount_uploader :silver, SilverUploader
  mount_uploader :bronze, BronzeUploader
  mount_uploader :partners, PartnersUploader
end

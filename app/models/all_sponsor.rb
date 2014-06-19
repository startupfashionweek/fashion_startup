class AllSponsor < ActiveRecord::Base
  mount_uploader :logo, LogoUploader

  def self.level_options
    return ["Platinum", "Gold", "Silver", "Bronze", "Partners"]
  end

end

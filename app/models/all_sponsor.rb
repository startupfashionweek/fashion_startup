class AllSponsor < ActiveRecord::Base
  mount_uploader :sponsor_logo, SponsorLogoUploader

  def self.level_options
    return ["Platinum", "Gold", "Silver", "Bronze", "Partners"]
  end

end

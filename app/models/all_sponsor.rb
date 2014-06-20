class AllSponsor < ActiveRecord::Base
  mount_uploader :sponsor_logo, SponsorLogoUploader

  def self.level_options
    return ["Platinum", "Gold", "Silver", "Bronze", "Partners"]
  end

  scope :platinum, -> { where(level: 'platinum')}
  scope :gold, -> { where(level: 'gold')}
  scope :silver, -> { where(level: 'silver')}
  scope :bronze, -> { where(level: 'bronze')}
  scope :partners, -> { where(level: 'partners')}

end

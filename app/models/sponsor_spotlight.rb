class SponsorSpotlight < ActiveRecord::Base
  def sponsor_featured
    return Sponsor.find(sponsor_id)
  end
end

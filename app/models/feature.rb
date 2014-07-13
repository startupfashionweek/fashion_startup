class Feature < ActiveRecord::Base

  def self.startup
    Startup.find(find_by(featurable_type: 'startup').featurable_id) ||
    Startup.limit(1).order('RANDOM()')
  end

  def self.sponsor
    Sponsor.find(find_by(featurable_type: 'sponsor').featurable_id) ||
    Sponsor.limit(1).order('RANDOM()')
  end

  def self.find_startup
    find_by_feature_type('startup')
  end

  def self.find_sponsor
    find_by_feature_type('sponsor')
  end

private

  def self.find_by_feature_type(type)
    find_or_create_by(featurable_type: type)
  end

end

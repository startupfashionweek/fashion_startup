class Participant < ActiveRecord::Base
  mount_uploader :headshot, HeadshotUploader
  validates_presence_of :title, :name, :headshot

  scope :digital_fashion_demo_presenters, -> { where(title: 'oct. 7 -digital fashion demo presenters')}
  scope :conference_speakers, -> { where(title: 'oct. 8 -conference speakers')}
  scope :startup_emerging_designers, -> { where(title: 'Oct. 9 -Startup/Emerging Designers')}
  scope :digital_fashion_startups, -> { where(title: 'Oct. 9 -Digital Fashion Startups')}
  scope :exhibitors_lounge_partners, -> { where(title: 'Oct. 9 -Exhibitors/Demo Lounge Partners')}
  
end

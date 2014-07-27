class Participant < ActiveRecord::Base
  mount_uploader :headshot, HeadshotUploader
  validates_presence_of :title, :name, :headshot

  scope :conference_speakers, -> { where(title: 'oct. 8 -conference speakers')}
  scope :digital_fashion_demo_presenters, -> { where(title: 'oct. 7 -digital fashion demo presenters')}
  scope :startup_emerging_designers, -> { where(title: 'Oct. 9 -Startup/Emerging Designers')}
  scope :digital_fashion_startups, -> { where(title: 'Oct. 9 -Digital Fashion Startups')}
  scope :exhibitors_lounge_partners, -> { where(title: 'Oct. 9 -Exhibitors/Demo Lounge Partners')}
  scope :workshop_3_speakers, -> { where(title: 'workshop 3 speakers')}
  scope :fashion_show_designers, -> { where(title: 'fashion show designers')}
  scope :fashion_show_judges, -> { where(title: 'fashion show judges')}

end

class Participant < ActiveRecord::Base
  mount_uploader :headshot, HeadshotUploader
  vaildates_presence_of :title, :name, :headshot

  scope :conference_speakers, -> { where(title: 'conference speakers')}
  scope :digital_fashion_judges, -> { where(title: 'digital fashion judges')}
  scope :digital_fashion_entrepreneurs, -> { where(title: 'digital fashion entrepreneurs')}
  scope :workshop_1_speakers, -> { where(title: 'workshop 1 speakers')}
  scope :workshop_2_speakers, -> { where(title: 'workshop 2 speakers')}
  scope :workshop_3_speakers, -> { where(title: 'workshop 3 speakers')}
  scope :fashion_show_designers, -> { where(title: 'fashion show designers')}
  scope :fashion_show_judges, -> { where(title: 'fashion show judges')}

end

class Team < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  vaildates_presence_of :name, :role, :picture

  scope :management_team, -> { where(status: 'management team')}
  scope :advisory_board, -> { where(status: 'advisory board')}

end

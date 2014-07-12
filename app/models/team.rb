class Team < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  scope :management_team, -> { where(status: 'management team')}
  scope :advisory_board, -> { where(status: 'advisory board')}

end

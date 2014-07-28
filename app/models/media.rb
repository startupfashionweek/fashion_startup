class Media < ActiveRecord::Base
  mount_uploader :pdf_files, PdfFilesUploader
  mount_uploader :cover_image, PictureUploader
  validates_presence_of :select_one

  scope :media_inquires, -> { where(select_one: 'media inquires')}
  scope :press_releases, -> { where(select_one: 'press releases')}
  scope :media_partners, -> { where(select_one: 'media partners')}
  scope :media_coverage, -> { where(select_one: 'media coverage')}
end

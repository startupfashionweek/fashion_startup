class Media < ActiveRecord::Base
  mount_uploader :pdf_files, PdfFilesUploader
  validates_presence_of :select_one, :content, :pdf_files

  scope :media_inquires, -> { where(select_one: 'media inquires')}
  scope :press_releases, -> { where(select_one: 'press releases')}
  scope :media_partners, -> { where(select_one: 'media partners')}
  scope :media_coverage, -> { where(select_one: 'media coverage')}
end

class Attachment < ApplicationRecord
  mount_uploader :pdf, PdfUploader

  belongs_to :assistance, optional: true
  belongs_to :health, optional: true
  belongs_to :immigration, optional: true
  belongs_to :pension, optional: true

  before_create :set_publication_date

  def set_publication_date
    self.publication_date = Date.today
  end

  validates :name, presence: true
  validates :pdf, presence: true
end

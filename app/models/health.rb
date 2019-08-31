class Health < ApplicationRecord
  has_many :attachments, dependent: :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: proc { |att| att["name"].blank? }

  validates :name, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :creation_date, presence: true
end

class Health < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :creation_date, presence: true
end

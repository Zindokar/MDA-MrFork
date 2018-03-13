class Reserve < ApplicationRecord
  validates :personCount, presence: true
  belongs_to :restaurant
end

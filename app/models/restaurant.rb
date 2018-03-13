class Restaurant < ApplicationRecord
  validates :name, :location, presence: true
  has_many :dishes
  has_many :schedules
  has_many :galleries
  has_many :reserves
end

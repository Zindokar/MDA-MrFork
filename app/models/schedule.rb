class Schedule < ApplicationRecord
  validates :weekDay, :openingTime, :closingTime, presence: true
  belongs_to :restaurant
end

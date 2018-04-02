class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :user_id, :date, :personCount, :restaurant_id, presence: true
end

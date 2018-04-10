class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :user_id, :date, :personCount, :restaurant_id, presence: true

  scope :myReservations, -> (user_id) { where(:user_id => user_id) }

end

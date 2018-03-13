class Dish < ApplicationRecord
  validates :name, :description, presence: true
  belongs_to :restaurant
end

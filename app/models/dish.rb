class Dish < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :image, ImageUploader
  validates :name, :price, :image, presence: true
end

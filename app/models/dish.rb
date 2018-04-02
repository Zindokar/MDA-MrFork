class Dish < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :restaurant

  mount_uploader :image, ImageUploader

end

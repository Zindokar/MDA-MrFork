class Photo < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end

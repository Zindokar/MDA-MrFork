class Restaurant < ApplicationRecord
  validates :name, :location, presence: true
  has_many :dishes
  has_many :schedules
  has_many :galleries
  has_many :reserves
  has_many :addresses

  mount_uploader :image, ImageUploader

  scope :restaurantByPostalCode, -> (postalCode) { Address.where("postalCode LIKE ?", postalCode) }
  scope :restaurantByName, -> (name) { Restaurant.where("name LIKE ?", name) }
  scope :restaurantByCity, -> (city) { Address.where("city LIKE ?", city) }
  scope :restaurantByStreet, -> (street) { Address.where("street LIKE ?", street) }
end

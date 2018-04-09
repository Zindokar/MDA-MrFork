class Restaurant < ApplicationRecord
  validates :name, presence: true
  has_many :dishes
  has_many :schedules
  has_many :reservations
  has_many :photos
  has_one :address
  has_and_belongs_to_many :types

  scope :restaurantByPostalCode, -> (postalCode) { Address.where("postalCode LIKE ?", postalCode) }
  scope :restaurantByName, -> (name) { Restaurant.where("name LIKE ?", name) }
  scope :restaurantByCity, -> (city) { Address.where("city LIKE ?", city) }
  scope :restaurantByStreet, -> (street) { Address.where("street LIKE ?", street) }
end

class Restaurant < ApplicationRecord
  validates :name, :location, presence: true
  has_many :dishes
  has_many :schedules
  has_many :reservations
  has_many :photos
  has_one :address
  has_and_belongs_to_many :types

  scope :restaurantByPostalCode, -> (postalCode) { Address.where("postalCode LIKE ?", postalCode) }
  scope :restaurantByName, -> (name) { Restaurant.where("name LIKE ?", name) }
  scope :restaurantByCity, -> (city) { Address.where("city LIKE ?", city) }
  scope :restaurantByStreet, -> (street) { Address.where("street LIKE ?", street)}
  #Me devuelve los tipos de comida
  scope :restaurantByFood, -> (name) { Type.where("name LIKE ?", name)}
  scope :restaurantByType, -> (type) { Type.find_by_name(type)}

end

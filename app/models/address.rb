class Address < ApplicationRecord
  validates :street, :city, :postalCode, :tlf, :email, presence: true
  belongs_to :restaurant
end

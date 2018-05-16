class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :reservations
  has_many :alerts
  has_many :restaurants

  def set_defaults
    self.role ||= 1
  end
  mount_uploader :image, ImageUploader
  validates :tlf, length: {minimum: 9 , maximum: 9}
  validates :email, :username,:tlf, presence: true
end

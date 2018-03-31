class Alert < ApplicationRecord
  validates :subject, :content, presence: true

  belongs_to :user
end

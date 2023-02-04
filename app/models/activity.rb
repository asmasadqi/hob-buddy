class Activity < ApplicationRecord
  belongs_to :users
  belongs_to :preferences
  has_many :bookings

  has_many_attached :images

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
end

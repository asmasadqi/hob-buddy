class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :preference

  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_many :bookings, dependent: :destroy

  has_many :users, through: :bookings

  has_one :activity_chatroom, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :gender, presence: true, inclusion: { in: ["Female", "Male", "Not specified"] }
end

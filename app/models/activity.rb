class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :preference

  has_many :bookings
  has_many :users, through: :bookings

  has_one :activity_chatroom, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :gender, presence: true, inclusion: { in: ["Female", "Male", "Not specified"] }
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  require "date"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  has_many :user_preferences, dependent: :destroy
  has_many :preferences, through: :user_preferences

  has_many :activities, dependent: :destroy

  has_many :activity_messages, dependent: :destroy
  has_many :activity_chatrooms, through: :activity_messages

  has_many :chatrooms
  has_many :messages, through: :chatrooms

  has_many :bookings, dependent: :destroy

  # As a user I can create many match requests with other users
  has_many :requests_as_requestor, foreign_key: :user_requester_id, class_name: 'Match', dependent: :destroy
  has_many :user_receivers, through: :requests_as_requestor

  # As a user I can receive many match requests from other users
  has_many :requests_as_receiver, foreign_key: :user_receiver_id, class_name: 'Match', dependent: :destroy
  has_many :user_requesters, through: :requests_as_receiver

  #TODO RECHECK VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :gender, presence: true, inclusion: { in: ["Female", "Male", "Not specified"] }
  validates :location, presence: true
  validates :date_of_birth, presence: true

  # Create full name to display
  def full_name
    "#{self.first_name.capitalize} #{self.last_name[0].capitalize}."
  end

  def age
    Time.zone.now.year - date_of_birth.year
  end
end

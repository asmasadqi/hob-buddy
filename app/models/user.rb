class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  require "date"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # geocoder to localize people and find in the users index for match
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_one_attached :avatar

  has_many :user_preferences, dependent: :destroy
  has_many :preferences, through: :user_preferences

  has_many :activities, dependent: :destroy

  has_many :activity_messages, dependent: :destroy
  has_many :activity_chatrooms, through: :activity_messages

  has_many :chatroom_as_user1, foreign_key: :user1_id, class_name: 'Chatroom', dependent: :destroy
  has_many :chatroom_as_user2, foreign_key: :user2_id, class_name: 'Chatroom', dependent: :destroy
  has_many :messages, through: :chatroom_as_user1
  has_many :messages, through: :chatroom_as_user2

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

  scope :not_matched_with, ->(user) { where.not(id: [user.user_receiver_ids, user.id].flatten) }
  scope :already_swiped, ->(user) { user.user_requesters.select{ |requester| requester.requests_as_requestor & user.requests_as_receiver.where(status: [1, 2]) != [] } }

  # Create full name to display
  def full_name
    "#{self.first_name.capitalize} #{self.last_name[0].capitalize}."
  end

  # Compute age from date of birth to display
  def age
    Time.zone.now.year - date_of_birth.year
  end

  def matches
    Match.where("user_requester_id = :id OR user_receiver_id = :id", id: id)
  end

  def confirmed_and_denied_users
    User.where(id: matches.confirmed_or_denied.pluck(:user_requester_id, :user_receiver_id).flatten - [self.id])
  end

  def denied_users
    User.where(id: matches.denied.pluck(:user_requester_id, :user_receiver_id).flatten - [self.id])
  end

  def confirmed_users
    User.where(id: matches.confirmed.pluck(:user_requester_id, :user_receiver_id).flatten - [self.id])
  end

  def users_i_have_asked_pending
    User.where(id: requests_as_requestor.pending.pluck(:user_receiver_id))
  end

  def users_i_dont_want_in_swiper
    confirmed_and_denied_users + users_i_have_asked_pending
  end

  def user_i_can_match
    User.where.not(id: [users_i_dont_want_in_swiper, id].flatten)
  end
end

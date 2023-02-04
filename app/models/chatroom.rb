class Chatroom < ApplicationRecord
  belongs_to :bookings
  has_many :messages
end

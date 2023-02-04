class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :activities
  has_many :chatrooms
end

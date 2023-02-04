class Message < ApplicationRecord
  belongs_to :users
  belongs_to :chatrooms

  validates :message, presence: true
end

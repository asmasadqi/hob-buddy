class Chatroom < ApplicationRecord
  belongs_to :user1, class_name: "User"
  belongs_to :users2, class_name: "User"

  has_many :messages
end

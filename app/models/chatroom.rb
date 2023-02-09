class Chatroom < ApplicationRecord
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"

  has_many :messages

  validates_uniqueness_of :user1_id, scope: :user2_id
end

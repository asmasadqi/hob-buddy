class Chatroom < ApplicationRecord
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :user1_id, scope: :user2_id

  def other_user(a_user)
    a_user.id == user1_id ? user2_id : user1_id
  end

end

class ActivityMessage < ApplicationRecord
  belongs_to :user
  belongs_to :activity_chatroom

  validates :content, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end
end

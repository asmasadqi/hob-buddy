class ActivityMessage < ApplicationRecord
  belongs_to :user
  belongs_to :activity_chatroom

  validates :content, presence: true
end

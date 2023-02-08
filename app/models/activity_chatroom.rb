class ActivityChatroom < ApplicationRecord
  belongs_to :activity

  has_many :activity_messages, dependent: :destroy
end

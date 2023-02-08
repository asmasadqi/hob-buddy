class Match < ApplicationRecord
  belongs_to :user_requester, class_name: "User"
  belongs_to :user_receiver, class_name: "User"

  enum :status, { pending: 0, confirmed: 1, denied: 2 }
end

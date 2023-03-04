class Match < ApplicationRecord
  belongs_to :user_requester, class_name: "User"
  belongs_to :user_receiver, class_name: "User"

  enum :status, { pending: 0, confirmed: 1, denied: 2 }

  scope :confirmed_or_denied, -> { where( status: [:confirmed, :denied] ) }

  def user_match(a_user)
    a_user == user_requester_id ? user_receiver_id : user_requester_id
  end
end

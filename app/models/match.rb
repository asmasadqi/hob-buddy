class Match < ApplicationRecord
  belongs_to :user_id_given
  belongs_to :user_id_received
end

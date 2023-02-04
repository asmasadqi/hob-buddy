class UserPreference < ApplicationRecord
  belongs_to :users
  belongs_to :preferences
end

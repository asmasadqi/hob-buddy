class Preference < ApplicationRecord
  has_many :user_preferences
  has_many :activities
end

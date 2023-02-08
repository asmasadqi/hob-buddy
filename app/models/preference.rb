class Preference < ApplicationRecord
  has_many :user_preferences, dependent: :destroy
  has_many :users, through: :user_preferences
  has_many :activities
end

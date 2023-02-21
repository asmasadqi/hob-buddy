class Preference < ApplicationRecord
  has_many :user_preferences, dependent: :destroy
  has_many :users, through: :user_preferences
  has_many :activities

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ["Culture", "Entertainment", "Food", "Sports", "Wellness", "Sightseeing", "Outdoors"] }

  def self.categories
    Preference.all.select(:category).distinct.map(&:category)
  end
end

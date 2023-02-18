class UserPreference < ApplicationRecord
  belongs_to :user
  belongs_to :preference

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ["Culture", "Entertainment", "Food", "Sports", "Wellness", "Sightseeing", "Outdoors"] }
end

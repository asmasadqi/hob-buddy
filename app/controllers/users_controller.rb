class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if user_signed_in?
      preferences = current_user.preferences.pluck(:id)
      location = current_user.location
      preferences_and_location = User.where.not(id: current_user.id).near(current_user.location, 100) #modifier la seed pour faire matcher les gens
      first_batch_users = preferences_and_location.where(user_preferences: UserPreference.where(preference_id: preferences))
      second_batch_users = preferences_and_location.where.not(id: first_batch_users.map(&:id))
      @users = (first_batch_users + second_batch_users).uniq
    else
      @users = User.all
    end
  end
end

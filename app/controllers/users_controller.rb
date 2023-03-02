class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
      preferences = current_user.preferences.pluck(:id)
      location = current_user.location
      preferences_and_location = User.not_matched_with(current_user).near(current_user.location, 100) #modifier la seed pour faire matcher les gens
      first_batch_users = preferences_and_location.where(user_preferences: UserPreference.where(preference_id: preferences))
      second_batch_users = preferences_and_location.where.not(id: first_batch_users.map(&:id))
      @users = first_batch_users + second_batch_users
      @users -= User.already_swiped(current_user)
    else
      @users = User.all
    end
  end
end

class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
      preferences = current_user.preferences.pluck(:id)
      location = current_user.location
      preferences_and_location = User.not_matched_with(current_user).near(current_user.location, 100) #modifier la seed pour faire matcher les gens
      first_batch_users = preferences_and_location.where(user_preferences: UserPreference.where(preference_id: preferences))
      second_batch_users = preferences_and_location.where.not(id: first_batch_users.map(&:id))
      users_candidates = first_batch_users + second_batch_users
      match_users = Match.where(user_requester_id: current_user.id)
      match_users_id = match_users.map { |match_user| match_user.user_receiver_id }
      @users = users_candidates.reject { |user| match_users_id.include?(user.id) }
    else
      @users = User.all
    end
  end
end

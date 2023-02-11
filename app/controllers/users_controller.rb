class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if user_signed_in?
      preferences = current_user.preferences.pluck(:id)
      #geocoder sur les utilisater avec near
      location = current_user.location
      mutualize = User.joins(:user_preferences).where.not(id: current_user.id)#.where(location: location)　> geocoder
      @first_batch_users = mutualize.where(user_preferences: UserPreference.where(preference_id: preferences))
      @second_batch_users = mutualize.where.not(user_preferences: UserPreference.where(preference_id: preferences))
      @users = @first_batch_users + @second_batch_users
    else
      @users = User.all
    end
  end
end

# supprimer les gens qui sont déjà passés

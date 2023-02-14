class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if current_user
      raise
      preferences = current_user&.preferences&.map(&:id)
      location = current_user.location
      mutualize = User.joins("JOIN user_preferences ON user_preferences.user_id = users.id").where.not(id: current_user.id).where(location: location)
      @first_batch_users = mutualize.where(user_preferences: UserPreference.where(preference_id: preferences))
      @second_batch_users = mutualize.where.not(user_preferences: UserPreference.where(preference_id: preferences))
      @users = @first_batch_users + @second_batch_users
    else
      @users = User.all
    end
  end
end

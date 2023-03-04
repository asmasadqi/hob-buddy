class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
      # preferences = current_user.preferences.pluck(:id)
      location = current_user.location
      # preferences_and_location = User.not_matched_with(current_user).near(current_user.location, 100) #modifier la seed pour faire matcher les gens
      # first_batch_users = preferences_and_location.where(user_preferences: UserPreference.where(preference_id: preferences))
      # second_batch_users = preferences_and_location.where.not(id: first_batch_users.map(&:id))
      # users_candidates = first_batch_users + second_batch_users
      # match_users = Match.where(user_requester_id: current_user.id)
      # kao = current_user
      # tous_les_gens_qui_mont_like_et_ke_g_pa_like = kao.requests_as_requestor.pending.pluck(:user_receiver_id) # i dont want those fuckers

      # tous_les_gens_avec_ki_g_matche_pa_pending = kao.requests_as_receiver.confirmed_or_denied.pluck(:user_requester_id) + kao.requests_as_requestor.confirmed_or_denied.pluck(:user_receiver_id)
      # second_users_ids = User.joins(:requests_as_receiver, :requests_as_requestor)
      # match_users_id = match_users.map { |match_user| match_user.user_receiver_id }


        # je ne veux pas les users:
        #  - avec qui jai un match en denied
        #  - avec qui jai un match en confirmed
        #  - ceux pour qui on a un match dont on est le requester en pending

      #   current_user.requests_as_requestor.pending.pluck(:user_receiver_id) #  - ceux pour qui on a un match dont on est le requester en pending OK

      #   current_user. # - avec qui jai un match en denied
      #   current_user.matches.confirmed.pluck(:user_requester_id, :user_receiver_id) # - avec qui jai un match en denied

      # users_id_i_dont_want = [current_user.id] + current_user.requests_as_requestor.pending.pluck(:user_receiver_id) + current_user.requests_as_receiver.confirmed_or_denied.pluck(:user_requester_id) + current_user.requests_as_requestor.confirmed_or_denied.pluck(:user_receiver_id)

      @users = current_user.user_i_can_match
    else
      @users = User.all
    end
  end
end

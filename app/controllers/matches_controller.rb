class MatchesController < ApplicationController
  def swipe
    @user_receiver = User.find(params[:id])
    @liked = params[:liked]
    @users = [@user_receiver, current_user]
    @match = Match.find_by(user_requester: @users, user_receiver: @users)
    if @match
      if @liked
        @match.update(status: :confirmed)
      else
        @match.update(status: :denied)
      end
    else
      if @liked
        @match = Match.create(user_receiver: @user_receiver, user_requester: current_user, status: :pending)
        @chatroom = Chatroom.create(user1: current_user, user2: @user_receiver)
      else
        @match = Match.create(user_receiver: @user_receiver, user_requester: current_user, status: :denied)
      end
    end

    json_response = {}
    json_response.merge!({ content: render_to_string(partial: 'modal/success', locals: { match: @match }) }) if @match.confirmed?

    respond_to do |format|
      format.json { render(json: json_response) }
      format.html { render("modal/success") }
    end
  end

  private

  def match_params
    params.require(:match).permit(:user_receiver_id)
  end
end

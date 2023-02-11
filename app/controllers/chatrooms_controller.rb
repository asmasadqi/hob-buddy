class ChatroomsController < ApplicationController

  def index
    @user = current_user
    @matches = Match.where("status = ? AND user_requester_id = ? OR user_receiver_id = ?", 1, @user.id, @user.id)
    @matches_list = []
    @matches.each do |match|
      if match.user_requester_id == current_user.id
        @matches_list << match.user_receiver_id
      else
        @matches_list << match.user_requester_id
      end
    end
  end

  def show
  end
end

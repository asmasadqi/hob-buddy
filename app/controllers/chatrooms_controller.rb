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

    @chatrooms = Chatroom.where("user1_id = ? OR user2_id = ?", @user.id, @user.id)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end

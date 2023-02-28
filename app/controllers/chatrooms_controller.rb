class ChatroomsController < ApplicationController

  def index
    @user = current_user
    @matches = Match.where("status = ? AND user_requester_id = ? OR user_receiver_id = ?", 1, @user.id, @user.id)
    @matches_list = []
    @matches.each do |match|
      if match.user_requester_id == current_user.id
        @matches_list << User.find(match.user_receiver_id)
      else
        @matches_list << User.find(match.user_requester_id)
      end
    end

    @chatrooms = Chatroom.where("user1_id = ? OR user2_id = ?", @user.id, @user.id)

    # Find the group chatrooms where the current user is a member
    bookings = Booking.where(user_id: @user.id)
    @activity_chatrooms = []
    bookings.each do |booking|
      @activity_chatrooms << ActivityChatroom.find_by(activity_id: booking.activity_id)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end

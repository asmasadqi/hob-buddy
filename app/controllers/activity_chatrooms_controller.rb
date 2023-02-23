class ActivityChatroomsController < ApplicationController

  def show
    @activity_chatroom = ActivityChatroom.find(params[:id])
    @activity = Activity.find(@activity_chatroom.activity_id)
    @activity_message = ActivityMessage.new
  end

end

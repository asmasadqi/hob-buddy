class ActivityChatroomChannel < ApplicationCable::Channel
  def subscribed
    activity_chatroom = ActivityChatroom.find(params[:id])
    stream_for activity_chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

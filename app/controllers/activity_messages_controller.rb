class ActivityMessagesController < ApplicationController

  def create
    @activity_chatroom = ActivityChatroom.find(params[:id])
    @activity_message = ActivityMessage.new(message_params)
    @activity_message.activity_chatroom = @chatroom
    @activity_message.user = current_user
    if @activity_message.save
      ChatroomChannel.broadcast_to(
        @activity_chatroom,
        message: render_to_string(partial: "message", locals: { message: @activity_message }),
        sender_id: @activity_message.user.id
      )
      head :ok
    else
      render "activity_chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:activity_message).permit(:content)
  end
end

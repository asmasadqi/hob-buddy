class ActivityChatroomsController < ApplicationController
  before_action :create_booking
  
  def show
    @activity_message = ActivityMessage.new
  end

  private 
  
  def create_booking
    set_activity
    booking = Booking.find_by(user_id: current_user.id, activity_id: @activity.id)
    # create a booking for the user only if it doesn't exist
    if booking == nil
      # When user Joins activity => create booking
      booking = Booking.new
      booking.activity = @activity #associate the activity to the created booking
      booking.user = current_user # associate user to the created booking
      # Joining activity also joins the user to the Chatroom (chatroom needs to be created when activity is created)
      if booking.save
        show
      else
        redirect_to activity(@activity), status: :unprocessable_entity #redirect to activity show if we can't create
      end
    end
  end

  def set_activity
    @activity_chatroom = ActivityChatroom.find(params[:id])
    @activity = Activity.find(@activity_chatroom.activity_id)
  end
end

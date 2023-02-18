class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    # get activities through search query or all
    if params[:query].present?
      @activities = Activity.search_by_title_description_category(params[:query])
    else
      @activities = Activity.all
    end
    # Getting my matches activities
    @matches = Match.where("status = ? AND user_requester_id = ? OR user_receiver_id = ?", 1, current_user.id, current_user.id)
    # Filter the matches to get only the other person matching you
    @matches_activities = []
    @matches.each do |match|
      Activity.where(user_id: match.user_match(current_user.id)).each do |activity|
        @matches_activities << activity
      end
    end
    
    # all activities in User's location 
    @activities_location = []
    @activities.each do |activity| 
      @activities_location << activity if activity.location == current_user.location
    end
  end

  def show
    set_activity
    @markers = [{ lat: @activity.latitude, lng: @activity.longitude }]
  end

  def new
    @activity = Activity.new
  end

  def create
    @user = current_user
    @activity = Activity.new(activity_params) #create a new activity from the filled form
    @activity.user = @user #associate the created activity to the current user
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_activity
  end

  def update
    set_activity
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    set_activity
    @activity.destroy
    redirect_to activities_path
  end

  # def all_activities
  #   @user = current_user
  #   @activities = @user.activities
  # end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :useful_information, :age_range, :gender, :preference_id, :location, :min_persons, :max_persons, :total_price, :start_date, :end_date, :photo)
  end
end

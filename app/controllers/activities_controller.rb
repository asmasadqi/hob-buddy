class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   if params[:query].present?
  #     @activities = Activity.search_by_title_description_category(params[:query])
  #   elsif params[:mine].present?
  #     all_activities
  #   else
  #     @activities = Activity.all
  #   end
  # end

  def show
    set_activity
    # The `geocoded` scope filters only activities with coordinates
    @markers = { lat: @activity.latitude, lng: @activity.longitude }
  end

  def new
    @activity = Activity.new
  end

  def create
    @user = current_user
    @activity = Activity.new(activity_params) #create a new activity from the filled form
    @activity.user = @user #associate the created activity to the current user
    # To finish because it does not save
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

# create_table "activities", force: :cascade do |t|
#   t.bigint "user_id", null: false
#   t.string "title"
#   t.text "description"
#   t.text "useful_information"
#   t.int4range "age_range"
#   t.string "gender"
#   t.bigint "preference_id", null: false
#   t.string "location"
#   t.integer "min_persons"
#   t.integer "max_persons"
#   t.integer "total_price"
#   t.datetime "start_date", precision: nil
#   t.datetime "end_date", precision: nil
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["preference_id"], name: "index_activities_on_preference_id"
#   t.index ["user_id"], name: "index_activities_on_user_id"
# end

require "test_helper"

class ActivityChatroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get activity_chatrooms_show_url
    assert_response :success
  end
end

require "test_helper"

class User::MyProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_my_profiles_index_url
    assert_response :success
  end
end

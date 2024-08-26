require "test_helper"

class User::CouresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_coures_index_url
    assert_response :success
  end
end

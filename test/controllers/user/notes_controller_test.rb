require "test_helper"

class User::NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_notes_index_url
    assert_response :success
  end
end

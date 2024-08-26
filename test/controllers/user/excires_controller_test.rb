require "test_helper"

class User::ExciresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_excires_index_url
    assert_response :success
  end
end

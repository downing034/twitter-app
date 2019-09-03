require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:paul)
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

end

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get log_in" do
    get :log_in
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get apro" do
    get :apro
    assert_response :success
  end

  test "should get serv" do
    get :serv
    assert_response :success
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get metodoloy" do
    get :metodoloy
    assert_response :success
  end

  test "should get our_pei" do
    get :our_pei
    assert_response :success
  end

  test "should get sections_pre" do
    get :sections_pre
    assert_response :success
  end

  test "should get accion" do
    get :accion
    assert_response :success
  end

  test "should get activity" do
    get :activity
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end

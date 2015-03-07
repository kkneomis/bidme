require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get food" do
    get :food
    assert_response :success
  end

  test "should get venue" do
    get :venue
    assert_response :success
  end

  test "should get decorations" do
    get :decorations
    assert_response :success
  end

  test "should get entertainment" do
    get :entertainment
    assert_response :success
  end

  test "should get catering" do
    get :catering
    assert_response :success
  end

  test "should get clothing" do
    get :clothing
    assert_response :success
  end

  test "should get other" do
    get :other
    assert_response :success
  end

end

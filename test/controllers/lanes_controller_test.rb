require 'test_helper'

class LanesControllerTest < ActionController::TestCase
  setup do
    @lane = lanes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lanes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lane" do
    assert_difference('Lane.count') do
      post :create, lane: { match_id: @lane.match_id, name: @lane.name }
    end

    assert_redirected_to lane_path(assigns(:lane))
  end

  test "should show lane" do
    get :show, id: @lane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lane
    assert_response :success
  end

  test "should update lane" do
    patch :update, id: @lane, lane: { match_id: @lane.match_id, name: @lane.name }
    assert_redirected_to lane_path(assigns(:lane))
  end

  test "should destroy lane" do
    assert_difference('Lane.count', -1) do
      delete :destroy, id: @lane
    end

    assert_redirected_to lanes_path
  end
end

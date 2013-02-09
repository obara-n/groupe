require 'test_helper'

class ReservesControllerTest < ActionController::TestCase
  setup do
    @reserf = reserves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserf" do
    assert_difference('Reserf.count') do
      post :create, reserf: { id: @reserf.id, name: @reserf.name, reserve_day: @reserf.reserve_day, room_id: @reserf.room_id, timezone: @reserf.timezone, user_id: @reserf.user_id }
    end

    assert_redirected_to reserf_path(assigns(:reserf))
  end

  test "should show reserf" do
    get :show, id: @reserf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserf
    assert_response :success
  end

  test "should update reserf" do
    put :update, id: @reserf, reserf: { id: @reserf.id, name: @reserf.name, reserve_day: @reserf.reserve_day, room_id: @reserf.room_id, timezone: @reserf.timezone, user_id: @reserf.user_id }
    assert_redirected_to reserf_path(assigns(:reserf))
  end

  test "should destroy reserf" do
    assert_difference('Reserf.count', -1) do
      delete :destroy, id: @reserf
    end

    assert_redirected_to reserves_path
  end
end

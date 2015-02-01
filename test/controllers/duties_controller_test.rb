require 'test_helper'

class DutiesControllerTest < ActionController::TestCase
  setup do
    @duty = duties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duty" do
    assert_difference('Duty.count') do
      post :create, duty: { category: @duty.category, level: @duty.level, name: @duty.name, players: @duty.players, sync_level: @duty.sync_level, time_limit: @duty.time_limit }
    end

    assert_redirected_to duty_path(assigns(:duty))
  end

  test "should show duty" do
    get :show, id: @duty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duty
    assert_response :success
  end

  test "should update duty" do
    patch :update, id: @duty, duty: { category: @duty.category, level: @duty.level, name: @duty.name, players: @duty.players, sync_level: @duty.sync_level, time_limit: @duty.time_limit }
    assert_redirected_to duty_path(assigns(:duty))
  end

  test "should destroy duty" do
    assert_difference('Duty.count', -1) do
      delete :destroy, id: @duty
    end

    assert_redirected_to duties_path
  end
end
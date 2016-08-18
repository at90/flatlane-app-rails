require 'test_helper'

class PrelaunchesControllerTest < ActionController::TestCase
  setup do
    @prelaunch = prelaunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prelaunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prelaunch" do
    assert_difference('Prelaunch.count') do
      post :create, prelaunch: { b_name: @prelaunch.b_name, city: @prelaunch.city, phone: @prelaunch.phone }
    end

    assert_redirected_to prelaunch_path(assigns(:prelaunch))
  end

  test "should show prelaunch" do
    get :show, id: @prelaunch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prelaunch
    assert_response :success
  end

  test "should update prelaunch" do
    patch :update, id: @prelaunch, prelaunch: { b_name: @prelaunch.b_name, city: @prelaunch.city, phone: @prelaunch.phone }
    assert_redirected_to prelaunch_path(assigns(:prelaunch))
  end

  test "should destroy prelaunch" do
    assert_difference('Prelaunch.count', -1) do
      delete :destroy, id: @prelaunch
    end

    assert_redirected_to prelaunches_path
  end
end

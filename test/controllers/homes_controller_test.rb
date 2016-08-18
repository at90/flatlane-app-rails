require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  setup do
    @home = homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home" do
    assert_difference('Home.count') do
      post :create, home: { address1: @home.address1, address2: @home.address2, amen: @home.amen, area: @home.area, b_id: @home.b_id, c_id: @home.c_id, cat: @home.cat, description: @home.description, feat_1: @home.feat_1, feat_2: @home.feat_2, l_gmap: @home.l_gmap, l_prox1: @home.l_prox1, l_prox1_name: @home.l_prox1_name, l_prox2: @home.l_prox2, l_prox2_name: @home.l_prox2_name, l_prox3: @home.l_prox3, l_prox3_name: @home.l_prox3_name, l_prox4: @home.l_prox4, l_prox4_name: @home.l_prox4_name, name: @home.name, price: @home.price, project_date: @home.project_date, state: @home.state }
    end

    assert_redirected_to home_path(assigns(:home))
  end

  test "should show home" do
    get :show, id: @home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home
    assert_response :success
  end

  test "should update home" do
    patch :update, id: @home, home: { address1: @home.address1, address2: @home.address2, amen: @home.amen, area: @home.area, b_id: @home.b_id, c_id: @home.c_id, cat: @home.cat, description: @home.description, feat_1: @home.feat_1, feat_2: @home.feat_2, l_gmap: @home.l_gmap, l_prox1: @home.l_prox1, l_prox1_name: @home.l_prox1_name, l_prox2: @home.l_prox2, l_prox2_name: @home.l_prox2_name, l_prox3: @home.l_prox3, l_prox3_name: @home.l_prox3_name, l_prox4: @home.l_prox4, l_prox4_name: @home.l_prox4_name, name: @home.name, price: @home.price, project_date: @home.project_date, state: @home.state }
    assert_redirected_to home_path(assigns(:home))
  end

  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete :destroy, id: @home
    end

    assert_redirected_to homes_path
  end
end

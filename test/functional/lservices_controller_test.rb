require 'test_helper'

class LservicesControllerTest < ActionController::TestCase
  setup do
    @lservice = lservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lservice" do
    assert_difference('Lservice.count') do
      post :create, lservice: { charge: @lservice.charge, servicecode: @lservice.servicecode, servicename: @lservice.servicename }
    end

    assert_redirected_to lservice_path(assigns(:lservice))
  end

  test "should show lservice" do
    get :show, id: @lservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lservice
    assert_response :success
  end

  test "should update lservice" do
    put :update, id: @lservice, lservice: { charge: @lservice.charge, servicecode: @lservice.servicecode, servicename: @lservice.servicename }
    assert_redirected_to lservice_path(assigns(:lservice))
  end

  test "should destroy lservice" do
    assert_difference('Lservice.count', -1) do
      delete :destroy, id: @lservice
    end

    assert_redirected_to lservices_path
  end
end

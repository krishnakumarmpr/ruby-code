require 'test_helper'

class LreportsControllerTest < ActionController::TestCase
  setup do
    @lreport = lreports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lreports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lreport" do
    assert_difference('Lreport.count') do
      post :create, lreport: { city: @lreport.city, exp: @lreport.exp, layorcode: @lreport.layorcode, layorname: @lreport.layorname, rate: @lreport.rate }
    end

    assert_redirected_to lreport_path(assigns(:lreport))
  end

  test "should show lreport" do
    get :show, id: @lreport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lreport
    assert_response :success
  end

  test "should update lreport" do
    put :update, id: @lreport, lreport: { city: @lreport.city, exp: @lreport.exp, layorcode: @lreport.layorcode, layorname: @lreport.layorname, rate: @lreport.rate }
    assert_redirected_to lreport_path(assigns(:lreport))
  end

  test "should destroy lreport" do
    assert_difference('Lreport.count', -1) do
      delete :destroy, id: @lreport
    end

    assert_redirected_to lreports_path
  end
end

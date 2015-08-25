require 'test_helper'

class LowerdetailsControllerTest < ActionController::TestCase
  setup do
    @lowerdetail = lowerdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lowerdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lowerdetail" do
    assert_difference('Lowerdetail.count') do
      post :create, lowerdetail: { city: @lowerdetail.city, experience: @lowerdetail.experience, lowyer: @lowerdetail.lowyer, lowyer_code: @lowerdetail.lowyer_code }
    end

    assert_redirected_to lowerdetail_path(assigns(:lowerdetail))
  end

  test "should show lowerdetail" do
    get :show, id: @lowerdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lowerdetail
    assert_response :success
  end

  test "should update lowerdetail" do
    put :update, id: @lowerdetail, lowerdetail: { city: @lowerdetail.city, experience: @lowerdetail.experience, lowyer: @lowerdetail.lowyer, lowyer_code: @lowerdetail.lowyer_code }
    assert_redirected_to lowerdetail_path(assigns(:lowerdetail))
  end

  test "should destroy lowerdetail" do
    assert_difference('Lowerdetail.count', -1) do
      delete :destroy, id: @lowerdetail
    end

    assert_redirected_to lowerdetails_path
  end
end

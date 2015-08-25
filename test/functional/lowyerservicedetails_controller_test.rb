require 'test_helper'

class LowyerservicedetailsControllerTest < ActionController::TestCase
  setup do
    @lowyerservicedetail = lowyerservicedetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lowyerservicedetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lowyerservicedetail" do
    assert_difference('Lowyerservicedetail.count') do
      post :create, lowyerservicedetail: { charges: @lowyerservicedetail.charges, lowyer_code: @lowyerservicedetail.lowyer_code, lowyerdetail_id: @lowyerservicedetail.lowyerdetail_id, service_code: @lowyerservicedetail.service_code, service_name: @lowyerservicedetail.service_name }
    end

    assert_redirected_to lowyerservicedetail_path(assigns(:lowyerservicedetail))
  end

  test "should show lowyerservicedetail" do
    get :show, id: @lowyerservicedetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lowyerservicedetail
    assert_response :success
  end

  test "should update lowyerservicedetail" do
    put :update, id: @lowyerservicedetail, lowyerservicedetail: { charges: @lowyerservicedetail.charges, lowyer_code: @lowyerservicedetail.lowyer_code, lowyerdetail_id: @lowyerservicedetail.lowyerdetail_id, service_code: @lowyerservicedetail.service_code, service_name: @lowyerservicedetail.service_name }
    assert_redirected_to lowyerservicedetail_path(assigns(:lowyerservicedetail))
  end

  test "should destroy lowyerservicedetail" do
    assert_difference('Lowyerservicedetail.count', -1) do
      delete :destroy, id: @lowyerservicedetail
    end

    assert_redirected_to lowyerservicedetails_path
  end
end

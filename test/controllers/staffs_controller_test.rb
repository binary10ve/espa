require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { date_of_birth: @staff.date_of_birth, emergency_contact_no: @staff.emergency_contact_no, first_name: @staff.first_name, last_name: @staff.last_name, pan_no: @staff.pan_no, permanent_address: @staff.permanent_address, phone1: @staff.phone1, phone2: @staff.phone2, temporary_address: @staff.temporary_address }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    patch :update, id: @staff, staff: { date_of_birth: @staff.date_of_birth, emergency_contact_no: @staff.emergency_contact_no, first_name: @staff.first_name, last_name: @staff.last_name, pan_no: @staff.pan_no, permanent_address: @staff.permanent_address, phone1: @staff.phone1, phone2: @staff.phone2, temporary_address: @staff.temporary_address }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end

require 'test_helper'

class StaffRolesControllerTest < ActionController::TestCase
  setup do
    @staff_role = staff_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_role" do
    assert_difference('StaffRole.count') do
      post :create, staff_role: { role_id: @staff_role.role_id, staff_id: @staff_role.staff_id }
    end

    assert_redirected_to staff_role_path(assigns(:staff_role))
  end

  test "should show staff_role" do
    get :show, id: @staff_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_role
    assert_response :success
  end

  test "should update staff_role" do
    patch :update, id: @staff_role, staff_role: { role_id: @staff_role.role_id, staff_id: @staff_role.staff_id }
    assert_redirected_to staff_role_path(assigns(:staff_role))
  end

  test "should destroy staff_role" do
    assert_difference('StaffRole.count', -1) do
      delete :destroy, id: @staff_role
    end

    assert_redirected_to staff_roles_path
  end
end

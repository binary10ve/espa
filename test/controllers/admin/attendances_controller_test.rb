require 'test_helper'

class Admin::AttendancesControllerTest < ActionController::TestCase
  setup do
    @admin_attendance = admin_attendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_attendance" do
    assert_difference('Admin::Attendance.count') do
      post :create, admin_attendance: { attendance_date: @admin_attendance.attendance_date, showed_up: @admin_attendance.showed_up, staff_id: @admin_attendance.staff_id, time_in: @admin_attendance.time_in, time_out: @admin_attendance.time_out }
    end

    assert_redirected_to admin_attendance_path(assigns(:admin_attendance))
  end

  test "should show admin_attendance" do
    get :show, id: @admin_attendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_attendance
    assert_response :success
  end

  test "should update admin_attendance" do
    patch :update, id: @admin_attendance, admin_attendance: { attendance_date: @admin_attendance.attendance_date, showed_up: @admin_attendance.showed_up, staff_id: @admin_attendance.staff_id, time_in: @admin_attendance.time_in, time_out: @admin_attendance.time_out }
    assert_redirected_to admin_attendance_path(assigns(:admin_attendance))
  end

  test "should destroy admin_attendance" do
    assert_difference('Admin::Attendance.count', -1) do
      delete :destroy, id: @admin_attendance
    end

    assert_redirected_to admin_attendances_path
  end
end

require 'test_helper'

class MeetingEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting_employee = meeting_employees(:one)
  end

  test "should get index" do
    get meeting_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_employee_url
    assert_response :success
  end

  test "should create meeting_employee" do
    assert_difference('MeetingEmployee.count') do
      post meeting_employees_url, params: { meeting_employee: { employee_id: @meeting_employee.employee_id, meeting_id: @meeting_employee.meeting_id } }
    end

    assert_redirected_to meeting_employee_url(MeetingEmployee.last)
  end

  test "should show meeting_employee" do
    get meeting_employee_url(@meeting_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_employee_url(@meeting_employee)
    assert_response :success
  end

  test "should update meeting_employee" do
    patch meeting_employee_url(@meeting_employee), params: { meeting_employee: { employee_id: @meeting_employee.employee_id, meeting_id: @meeting_employee.meeting_id } }
    assert_redirected_to meeting_employee_url(@meeting_employee)
  end

  test "should destroy meeting_employee" do
    assert_difference('MeetingEmployee.count', -1) do
      delete meeting_employee_url(@meeting_employee)
    end

    assert_redirected_to meeting_employees_url
  end
end

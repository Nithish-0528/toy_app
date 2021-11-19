require "test_helper"

class EmployeeAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_app = employee_apps(:one)
  end

  test "should get index" do
    get employee_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_app_url
    assert_response :success
  end

  test "should create employee_app" do
    assert_difference('EmployeeApp.count') do
      post employee_apps_url, params: { employee_app: { age: @employee_app.age, designation: @employee_app.designation, employee_name: @employee_app.employee_name, gender: @employee_app.gender } }
    end

    assert_redirected_to employee_app_url(EmployeeApp.last)
  end

  test "should show employee_app" do
    get employee_app_url(@employee_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_app_url(@employee_app)
    assert_response :success
  end

  test "should update employee_app" do
    patch employee_app_url(@employee_app), params: { employee_app: { age: @employee_app.age, designation: @employee_app.designation, employee_name: @employee_app.employee_name, gender: @employee_app.gender } }
    assert_redirected_to employee_app_url(@employee_app)
  end

  test "should destroy employee_app" do
    assert_difference('EmployeeApp.count', -1) do
      delete employee_app_url(@employee_app)
    end

    assert_redirected_to employee_apps_url
  end
end

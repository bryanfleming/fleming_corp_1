require 'test_helper'

class GaReportsControllerTest < ActionController::TestCase
  setup do
    @ga_report = ga_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ga_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ga_report" do
    assert_difference('GaReport.count') do
      post :create, ga_report: {  }
    end

    assert_redirected_to ga_report_path(assigns(:ga_report))
  end

  test "should show ga_report" do
    get :show, id: @ga_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ga_report
    assert_response :success
  end

  test "should update ga_report" do
    patch :update, id: @ga_report, ga_report: {  }
    assert_redirected_to ga_report_path(assigns(:ga_report))
  end

  test "should destroy ga_report" do
    assert_difference('GaReport.count', -1) do
      delete :destroy, id: @ga_report
    end

    assert_redirected_to ga_reports_path
  end
end

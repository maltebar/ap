require 'test_helper'

class DesignCasesControllerTest < ActionController::TestCase
  setup do
    @design_case = design_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:design_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create design_case" do
    assert_difference('DesignCase.count') do
      post :create, design_case: {  }
    end

    assert_redirected_to design_case_path(assigns(:design_case))
  end

  test "should show design_case" do
    get :show, id: @design_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @design_case
    assert_response :success
  end

  test "should update design_case" do
    patch :update, id: @design_case, design_case: {  }
    assert_redirected_to design_case_path(assigns(:design_case))
  end

  test "should destroy design_case" do
    assert_difference('DesignCase.count', -1) do
      delete :destroy, id: @design_case
    end

    assert_redirected_to design_cases_path
  end
end

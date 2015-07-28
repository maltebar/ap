require 'test_helper'

class CodeCasesControllerTest < ActionController::TestCase
  setup do
    @code_case = code_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_case" do
    assert_difference('CodeCase.count') do
      post :create, code_case: {  }
    end

    assert_redirected_to code_case_path(assigns(:code_case))
  end

  test "should show code_case" do
    get :show, id: @code_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_case
    assert_response :success
  end

  test "should update code_case" do
    patch :update, id: @code_case, code_case: {  }
    assert_redirected_to code_case_path(assigns(:code_case))
  end

  test "should destroy code_case" do
    assert_difference('CodeCase.count', -1) do
      delete :destroy, id: @code_case
    end

    assert_redirected_to code_cases_path
  end
end

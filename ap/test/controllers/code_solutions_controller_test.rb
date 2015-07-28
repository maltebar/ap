require 'test_helper'

class CodeSolutionsControllerTest < ActionController::TestCase
  setup do
    @code_solution = code_solutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_solutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_solution" do
    assert_difference('CodeSolution.count') do
      post :create, code_solution: {  }
    end

    assert_redirected_to code_solution_path(assigns(:code_solution))
  end

  test "should show code_solution" do
    get :show, id: @code_solution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_solution
    assert_response :success
  end

  test "should update code_solution" do
    patch :update, id: @code_solution, code_solution: {  }
    assert_redirected_to code_solution_path(assigns(:code_solution))
  end

  test "should destroy code_solution" do
    assert_difference('CodeSolution.count', -1) do
      delete :destroy, id: @code_solution
    end

    assert_redirected_to code_solutions_path
  end
end

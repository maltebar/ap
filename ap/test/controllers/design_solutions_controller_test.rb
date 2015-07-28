require 'test_helper'

class DesignSolutionsControllerTest < ActionController::TestCase
  setup do
    @design_solution = design_solutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:design_solutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create design_solution" do
    assert_difference('DesignSolution.count') do
      post :create, design_solution: {  }
    end

    assert_redirected_to design_solution_path(assigns(:design_solution))
  end

  test "should show design_solution" do
    get :show, id: @design_solution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @design_solution
    assert_response :success
  end

  test "should update design_solution" do
    patch :update, id: @design_solution, design_solution: {  }
    assert_redirected_to design_solution_path(assigns(:design_solution))
  end

  test "should destroy design_solution" do
    assert_difference('DesignSolution.count', -1) do
      delete :destroy, id: @design_solution
    end

    assert_redirected_to design_solutions_path
  end
end

require 'test_helper'

class CodeSolutionAttachmentsControllerTest < ActionController::TestCase
  setup do
    @code_solution_attachment = code_solution_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_solution_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_solution_attachment" do
    assert_difference('CodeSolutionAttachment.count') do
      post :create, code_solution_attachment: {  }
    end

    assert_redirected_to code_solution_attachment_path(assigns(:code_solution_attachment))
  end

  test "should show code_solution_attachment" do
    get :show, id: @code_solution_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_solution_attachment
    assert_response :success
  end

  test "should update code_solution_attachment" do
    patch :update, id: @code_solution_attachment, code_solution_attachment: {  }
    assert_redirected_to code_solution_attachment_path(assigns(:code_solution_attachment))
  end

  test "should destroy code_solution_attachment" do
    assert_difference('CodeSolutionAttachment.count', -1) do
      delete :destroy, id: @code_solution_attachment
    end

    assert_redirected_to code_solution_attachments_path
  end
end

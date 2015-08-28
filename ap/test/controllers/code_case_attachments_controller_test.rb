require 'test_helper'

class CodeCaseAttachmentsControllerTest < ActionController::TestCase
  setup do
    @code_case_attachment = code_case_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_case_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_case_attachment" do
    assert_difference('CodeCaseAttachment.count') do
      post :create, code_case_attachment: {  }
    end

    assert_redirected_to code_case_attachment_path(assigns(:code_case_attachment))
  end

  test "should show code_case_attachment" do
    get :show, id: @code_case_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_case_attachment
    assert_response :success
  end

  test "should update code_case_attachment" do
    patch :update, id: @code_case_attachment, code_case_attachment: {  }
    assert_redirected_to code_case_attachment_path(assigns(:code_case_attachment))
  end

  test "should destroy code_case_attachment" do
    assert_difference('CodeCaseAttachment.count', -1) do
      delete :destroy, id: @code_case_attachment
    end

    assert_redirected_to code_case_attachments_path
  end
end

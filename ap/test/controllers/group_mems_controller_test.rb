require 'test_helper'

class GroupMemsControllerTest < ActionController::TestCase
  setup do
    @group_mem = group_mems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_mems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_mem" do
    assert_difference('GroupMem.count') do
      post :create, group_mem: {  }
    end

    assert_redirected_to group_mem_path(assigns(:group_mem))
  end

  test "should show group_mem" do
    get :show, id: @group_mem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_mem
    assert_response :success
  end

  test "should update group_mem" do
    patch :update, id: @group_mem, group_mem: {  }
    assert_redirected_to group_mem_path(assigns(:group_mem))
  end

  test "should destroy group_mem" do
    assert_difference('GroupMem.count', -1) do
      delete :destroy, id: @group_mem
    end

    assert_redirected_to group_mems_path
  end
end

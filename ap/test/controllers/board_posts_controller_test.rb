require 'test_helper'

class BoardPostsControllerTest < ActionController::TestCase
  setup do
    @board_post = board_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_post" do
    assert_difference('BoardPost.count') do
      post :create, board_post: {  }
    end

    assert_redirected_to board_post_path(assigns(:board_post))
  end

  test "should show board_post" do
    get :show, id: @board_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board_post
    assert_response :success
  end

  test "should update board_post" do
    patch :update, id: @board_post, board_post: {  }
    assert_redirected_to board_post_path(assigns(:board_post))
  end

  test "should destroy board_post" do
    assert_difference('BoardPost.count', -1) do
      delete :destroy, id: @board_post
    end

    assert_redirected_to board_posts_path
  end
end

require 'test_helper'

class BoardPostUpvotesControllerTest < ActionController::TestCase
  setup do
    @board_post_upvote = board_post_upvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_post_upvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_post_upvote" do
    assert_difference('BoardPostUpvote.count') do
      post :create, board_post_upvote: {  }
    end

    assert_redirected_to board_post_upvote_path(assigns(:board_post_upvote))
  end

  test "should show board_post_upvote" do
    get :show, id: @board_post_upvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board_post_upvote
    assert_response :success
  end

  test "should update board_post_upvote" do
    patch :update, id: @board_post_upvote, board_post_upvote: {  }
    assert_redirected_to board_post_upvote_path(assigns(:board_post_upvote))
  end

  test "should destroy board_post_upvote" do
    assert_difference('BoardPostUpvote.count', -1) do
      delete :destroy, id: @board_post_upvote
    end

    assert_redirected_to board_post_upvotes_path
  end
end

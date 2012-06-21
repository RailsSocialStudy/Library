require 'test_helper'

class BookUsersControllerTest < ActionController::TestCase
  setup do
    @book_user = book_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_user" do
    assert_difference('BookUser.count') do
      post :create, book_user: { book_id: @book_user.book_id, user_id: @book_user.user_id }
    end

    assert_redirected_to book_user_path(assigns(:book_user))
  end

  test "should show book_user" do
    get :show, id: @book_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_user
    assert_response :success
  end

  test "should update book_user" do
    put :update, id: @book_user, book_user: { book_id: @book_user.book_id, user_id: @book_user.user_id }
    assert_redirected_to book_user_path(assigns(:book_user))
  end

  test "should destroy book_user" do
    assert_difference('BookUser.count', -1) do
      delete :destroy, id: @book_user
    end

    assert_redirected_to book_users_path
  end
end

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { at_ada: @user.at_ada, available: @user.available, company: @user.company, email: @user.email, first_name: @user.first_name, languages: @user.languages, last_name: @user.last_name, physical_description: @user.physical_description, pronouns: @user.pronouns, pronouns: @user.pronouns, remote: @user.remote, screenhero: @user.screenhero, twitter: @user.twitter }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { at_ada: @user.at_ada, available: @user.available, company: @user.company, email: @user.email, first_name: @user.first_name, languages: @user.languages, last_name: @user.last_name, physical_description: @user.physical_description, pronouns: @user.pronouns, pronouns: @user.pronouns, remote: @user.remote, screenhero: @user.screenhero, twitter: @user.twitter }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end

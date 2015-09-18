require 'test_helper'

class ConnpassesControllerTest < ActionController::TestCase
  setup do
    @connpass = connpasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:connpasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create connpass" do
    assert_difference('Connpass.count') do
      post :create, connpass: {  }
    end

    assert_redirected_to connpass_path(assigns(:connpass))
  end

  test "should show connpass" do
    get :show, id: @connpass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @connpass
    assert_response :success
  end

  test "should update connpass" do
    patch :update, id: @connpass, connpass: {  }
    assert_redirected_to connpass_path(assigns(:connpass))
  end

  test "should destroy connpass" do
    assert_difference('Connpass.count', -1) do
      delete :destroy, id: @connpass
    end

    assert_redirected_to connpasses_path
  end
end

require 'test_helper'

class ConpassesControllerTest < ActionController::TestCase
  setup do
    @conpass = conpasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conpasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conpass" do
    assert_difference('Conpass.count') do
      post :create, conpass: {  }
    end

    assert_redirected_to conpass_path(assigns(:conpass))
  end

  test "should show conpass" do
    get :show, id: @conpass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conpass
    assert_response :success
  end

  test "should update conpass" do
    patch :update, id: @conpass, conpass: {  }
    assert_redirected_to conpass_path(assigns(:conpass))
  end

  test "should destroy conpass" do
    assert_difference('Conpass.count', -1) do
      delete :destroy, id: @conpass
    end

    assert_redirected_to conpasses_path
  end
end

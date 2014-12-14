require 'test_helper'

class LawnsControllerTest < ActionController::TestCase
  setup do
    @lawn = lawns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lawns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lawn" do
    assert_difference('Lawn.count') do
      post :create, lawn: { lawn_no: @lawn.lawn_no }
    end

    assert_redirected_to lawn_path(assigns(:lawn))
  end

  test "should show lawn" do
    get :show, id: @lawn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lawn
    assert_response :success
  end

  test "should update lawn" do
    patch :update, id: @lawn, lawn: { lawn_no: @lawn.lawn_no }
    assert_redirected_to lawn_path(assigns(:lawn))
  end

  test "should destroy lawn" do
    assert_difference('Lawn.count', -1) do
      delete :destroy, id: @lawn
    end

    assert_redirected_to lawns_path
  end
end

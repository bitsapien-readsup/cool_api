require 'test_helper'

class CoolGuysControllerTest < ActionController::TestCase
  setup do
    @cool_guy = cool_guys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cool_guys)
  end

  test "should create cool_guy" do
    assert_difference('CoolGuy.count') do
      post :create, cool_guy: { Name: @cool_guy.Name, message: @cool_guy.message }
    end

    assert_response 201
  end

  test "should show cool_guy" do
    get :show, id: @cool_guy
    assert_response :success
  end

  test "should update cool_guy" do
    put :update, id: @cool_guy, cool_guy: { Name: @cool_guy.Name, message: @cool_guy.message }
    assert_response 204
  end

  test "should destroy cool_guy" do
    assert_difference('CoolGuy.count', -1) do
      delete :destroy, id: @cool_guy
    end

    assert_response 204
  end
end

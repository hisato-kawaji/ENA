require 'test_helper'

class GathersControllerTest < ActionController::TestCase
  setup do
    @gather = gathers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gathers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gather" do
    assert_difference('Gather.count') do
      post :create, gather: {  }
    end

    assert_redirected_to gather_path(assigns(:gather))
  end

  test "should show gather" do
    get :show, id: @gather
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gather
    assert_response :success
  end

  test "should update gather" do
    patch :update, id: @gather, gather: {  }
    assert_redirected_to gather_path(assigns(:gather))
  end

  test "should destroy gather" do
    assert_difference('Gather.count', -1) do
      delete :destroy, id: @gather
    end

    assert_redirected_to gathers_path
  end
end

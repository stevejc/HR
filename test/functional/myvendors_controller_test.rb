require 'test_helper'

class MyvendorsControllerTest < ActionController::TestCase
  setup do
    @myvendor = myvendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myvendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myvendor" do
    assert_difference('Myvendor.count') do
      post :create, :myvendor => @myvendor.attributes
    end

    assert_redirected_to myvendor_path(assigns(:myvendor))
  end

  test "should show myvendor" do
    get :show, :id => @myvendor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @myvendor.to_param
    assert_response :success
  end

  test "should update myvendor" do
    put :update, :id => @myvendor.to_param, :myvendor => @myvendor.attributes
    assert_redirected_to myvendor_path(assigns(:myvendor))
  end

  test "should destroy myvendor" do
    assert_difference('Myvendor.count', -1) do
      delete :destroy, :id => @myvendor.to_param
    end

    assert_redirected_to myvendors_path
  end
end

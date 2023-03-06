require 'test_helper'

class UserwebsControllerTest < ActionController::TestCase
  setup do
    @userweb = userwebs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userwebs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userweb" do
    assert_difference('Userweb.count') do
      post :create, userweb: { cart: @userweb.cart, quantity: @userweb.quantity, user_id: @userweb.user_id }
    end

    assert_redirected_to userweb_path(assigns(:userweb))
  end

  test "should show userweb" do
    get :show, id: @userweb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userweb
    assert_response :success
  end

  test "should update userweb" do
    patch :update, id: @userweb, userweb: { cart: @userweb.cart, quantity: @userweb.quantity, user_id: @userweb.user_id }
    assert_redirected_to userweb_path(assigns(:userweb))
  end

  test "should destroy userweb" do
    assert_difference('Userweb.count', -1) do
      delete :destroy, id: @userweb
    end

    assert_redirected_to userwebs_path
  end
end

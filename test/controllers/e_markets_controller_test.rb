require 'test_helper'

class EMarketsControllerTest < ActionController::TestCase
  setup do
    @e_market = e_markets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:e_markets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create e_market" do
    assert_difference('EMarket.count') do
      post :create, e_market: { price: @e_market.price, protect_id: @e_market.protect_id, protect_name: @e_market.protect_name, specification: @e_market.specification }
    end

    assert_redirected_to e_market_path(assigns(:e_market))
  end

  test "should show e_market" do
    get :show, id: @e_market
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @e_market
    assert_response :success
  end

  test "should update e_market" do
    patch :update, id: @e_market, e_market: { price: @e_market.price, protect_id: @e_market.protect_id, protect_name: @e_market.protect_name, specification: @e_market.specification }
    assert_redirected_to e_market_path(assigns(:e_market))
  end

  test "should destroy e_market" do
    assert_difference('EMarket.count', -1) do
      delete :destroy, id: @e_market
    end

    assert_redirected_to e_markets_path
  end
end

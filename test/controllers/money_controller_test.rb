require 'test_helper'

class MoneyControllerTest < ActionController::TestCase
  setup do
    @money = money(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:money)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create money" do
    assert_difference('Money.count') do
      post :create, money: { income: @money.income, outcome: @money.outcome, registered: @money.registered, total: @money.total }
    end

    assert_redirected_to money_path(assigns(:money))
  end

  test "should show money" do
    get :show, id: @money
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @money
    assert_response :success
  end

  test "should update money" do
    patch :update, id: @money, money: { income: @money.income, outcome: @money.outcome, registered: @money.registered, total: @money.total }
    assert_redirected_to money_path(assigns(:money))
  end

  test "should destroy money" do
    assert_difference('Money.count', -1) do
      delete :destroy, id: @money
    end

    assert_redirected_to money_index_path
  end
end

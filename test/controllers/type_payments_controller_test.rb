require 'test_helper'

class TypePaymentsControllerTest < ActionController::TestCase
  setup do
    @type_payment = type_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_payment" do
    assert_difference('TypePayment.count') do
      post :create, type_payment: { account: @type_payment.account, account_owner: @type_payment.account_owner, agency: @type_payment.agency, brand: @type_payment.brand, description: @type_payment.description }
    end

    assert_redirected_to type_payment_path(assigns(:type_payment))
  end

  test "should show type_payment" do
    get :show, id: @type_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_payment
    assert_response :success
  end

  test "should update type_payment" do
    patch :update, id: @type_payment, type_payment: { account: @type_payment.account, account_owner: @type_payment.account_owner, agency: @type_payment.agency, brand: @type_payment.brand, description: @type_payment.description }
    assert_redirected_to type_payment_path(assigns(:type_payment))
  end

  test "should destroy type_payment" do
    assert_difference('TypePayment.count', -1) do
      delete :destroy, id: @type_payment
    end

    assert_redirected_to type_payments_path
  end
end

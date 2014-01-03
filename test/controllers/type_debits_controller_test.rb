require 'test_helper'

class TypeDebitsControllerTest < ActionController::TestCase
  setup do
    @type_debit = type_debits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_debits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_debit" do
    assert_difference('TypeDebit.count') do
      post :create, type_debit: { description: @type_debit.description }
    end

    assert_redirected_to type_debit_path(assigns(:type_debit))
  end

  test "should show type_debit" do
    get :show, id: @type_debit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_debit
    assert_response :success
  end

  test "should update type_debit" do
    patch :update, id: @type_debit, type_debit: { description: @type_debit.description }
    assert_redirected_to type_debit_path(assigns(:type_debit))
  end

  test "should destroy type_debit" do
    assert_difference('TypeDebit.count', -1) do
      delete :destroy, id: @type_debit
    end

    assert_redirected_to type_debits_path
  end
end

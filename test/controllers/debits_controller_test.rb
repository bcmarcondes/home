require 'test_helper'

class DebitsControllerTest < ActionController::TestCase
  setup do
    @debit = debits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debit" do
    assert_difference('Debit.count') do
      post :create, debit: { debt_item_id: @debit.debt_item_id, description: @debit.description, expiration_date: @debit.expiration_date, invoice: @debit.invoice, partition_number: @debit.partition_number, partition_value: @debit.partition_value, payment_date: @debit.payment_date, total_partition_number: @debit.total_partition_number, total_value: @debit.total_value, type_debit_id: @debit.type_debit_id, type_payment_id: @debit.type_payment_id, user_id: @debit.user_id }
    end

    assert_redirected_to debit_path(assigns(:debit))
  end

  test "should show debit" do
    get :show, id: @debit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debit
    assert_response :success
  end

  test "should update debit" do
    patch :update, id: @debit, debit: { debt_item_id: @debit.debt_item_id, description: @debit.description, expiration_date: @debit.expiration_date, invoice: @debit.invoice, partition_number: @debit.partition_number, partition_value: @debit.partition_value, payment_date: @debit.payment_date, total_partition_number: @debit.total_partition_number, total_value: @debit.total_value, type_debit_id: @debit.type_debit_id, type_payment_id: @debit.type_payment_id, user_id: @debit.user_id }
    assert_redirected_to debit_path(assigns(:debit))
  end

  test "should destroy debit" do
    assert_difference('Debit.count', -1) do
      delete :destroy, id: @debit
    end

    assert_redirected_to debits_path
  end
end

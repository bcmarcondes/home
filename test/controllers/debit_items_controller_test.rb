require 'test_helper'

class DebitItemsControllerTest < ActionController::TestCase
  setup do
    @debit_item = debit_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debit_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debit_item" do
    assert_difference('DebitItem.count') do
      post :create, debit_item: { description: @debit_item.description, shop: @debit_item.shop, value: @debit_item.value }
    end

    assert_redirected_to debit_item_path(assigns(:debit_item))
  end

  test "should show debit_item" do
    get :show, id: @debit_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debit_item
    assert_response :success
  end

  test "should update debit_item" do
    patch :update, id: @debit_item, debit_item: { description: @debit_item.description, shop: @debit_item.shop, value: @debit_item.value }
    assert_redirected_to debit_item_path(assigns(:debit_item))
  end

  test "should destroy debit_item" do
    assert_difference('DebitItem.count', -1) do
      delete :destroy, id: @debit_item
    end

    assert_redirected_to debit_items_path
  end
end

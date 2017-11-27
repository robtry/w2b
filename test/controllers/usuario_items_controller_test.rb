require 'test_helper'

class UsuarioItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_item = usuario_items(:one)
  end

  test "should get index" do
    get usuario_items_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_item_url
    assert_response :success
  end

  test "should create usuario_item" do
    assert_difference('UsuarioItem.count') do
      post usuario_items_url, params: { usuario_item: { assignment_id: @usuario_item.assignment_id, item_id: @usuario_item.item_id } }
    end

    assert_redirected_to usuario_item_url(UsuarioItem.last)
  end

  test "should show usuario_item" do
    get usuario_item_url(@usuario_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_item_url(@usuario_item)
    assert_response :success
  end

  test "should update usuario_item" do
    patch usuario_item_url(@usuario_item), params: { usuario_item: { assignment_id: @usuario_item.assignment_id, item_id: @usuario_item.item_id } }
    assert_redirected_to usuario_item_url(@usuario_item)
  end

  test "should destroy usuario_item" do
    assert_difference('UsuarioItem.count', -1) do
      delete usuario_item_url(@usuario_item)
    end

    assert_redirected_to usuario_items_url
  end
end

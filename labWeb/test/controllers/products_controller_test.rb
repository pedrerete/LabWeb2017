require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_index_url
    assert_response :success
  end

  test "should get add" do
    get products_add_url
    assert_response :success
  end

  test "should get create" do
    get products_create_url
    assert_response :success
  end

  test "should get edit" do
    get products_edit_url
    assert_response :success
  end

  test "should get update" do
    get products_update_url
    assert_response :success
  end

  test "should get delete" do
    get products_delete_url
    assert_response :success
  end

end

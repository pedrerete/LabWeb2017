require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stores_index_url
    assert_response :success
  end

  test "should get add" do
    get stores_add_url
    assert_response :success
  end

  test "should get create" do
    get stores_create_url
    assert_response :success
  end

  test "should get edit" do
    get stores_edit_url
    assert_response :success
  end

  test "should get update" do
    get stores_update_url
    assert_response :success
  end

  test "should get delete" do
    get stores_delete_url
    assert_response :success
  end

end

require 'test_helper'

class NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get news_index_url
    assert_response :success
  end

  test "should get add" do
    get news_add_url
    assert_response :success
  end

  test "should get create" do
    get news_create_url
    assert_response :success
  end

  test "should get edit" do
    get news_edit_url
    assert_response :success
  end

  test "should get update" do
    get news_update_url
    assert_response :success
  end

  test "should get delete" do
    get news_delete_url
    assert_response :success
  end

end

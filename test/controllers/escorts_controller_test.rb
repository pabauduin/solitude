require 'test_helper'

class EscortsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get escorts_index_url
    assert_response :success
  end

  test "should get show" do
    get escorts_show_url
    assert_response :success
  end

  test "should get new" do
    get escorts_new_url
    assert_response :success
  end

  test "should get create" do
    get escorts_create_url
    assert_response :success
  end

  test "should get edit" do
    get escorts_edit_url
    assert_response :success
  end

  test "should get update" do
    get escorts_update_url
    assert_response :success
  end

  test "should get delete" do
    get escorts_delete_url
    assert_response :success
  end

end

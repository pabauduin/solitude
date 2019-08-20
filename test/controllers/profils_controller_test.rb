require 'test_helper'

class ProfilsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get profils_show_url
    assert_response :success
  end

  test "should get create" do
    get profils_create_url
    assert_response :success
  end

  test "should get add" do
    get profils_add_url
    assert_response :success
  end

  test "should get edit" do
    get profils_edit_url
    assert_response :success
  end

  test "should get update" do
    get profils_update_url
    assert_response :success
  end

  test "should get delete" do
    get profils_delete_url
    assert_response :success
  end

end

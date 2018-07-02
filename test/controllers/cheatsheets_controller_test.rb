require 'test_helper'

class CheatsheetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cheatsheets_index_url
    assert_response :success
  end

  test "should get new" do
    get cheatsheets_new_url
    assert_response :success
  end

  test "should get create" do
    get cheatsheets_create_url
    assert_response :success
  end

  test "should get edit" do
    get cheatsheets_edit_url
    assert_response :success
  end

  test "should get update" do
    get cheatsheets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cheatsheets_destroy_url
    assert_response :success
  end

  test "should get show" do
    get cheatsheets_show_url
    assert_response :success
  end

end

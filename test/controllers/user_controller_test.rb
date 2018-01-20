require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_edit_url
    assert_response :success
  end

  test "should get delete" do
    get user_delete_url
    assert_response :success
  end

end

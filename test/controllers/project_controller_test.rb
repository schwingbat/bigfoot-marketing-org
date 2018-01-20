require 'test_helper'

class ProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get project_create_url
    assert_response :success
  end

  test "should get edit" do
    get project_edit_url
    assert_response :success
  end

  test "should get delete" do
    get project_delete_url
    assert_response :success
  end

end

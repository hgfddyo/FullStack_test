require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get [index]" do
    get projects_[index]_url
    assert_response :success
  end
end

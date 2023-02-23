require 'test_helper'

class SessionManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get session_management_index_url
    assert_response :success
  end

end

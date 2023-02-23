require 'test_helper'

class CookiesManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cookies_management_index_url
    assert_response :success
  end

end

require 'test_helper'

class RsquestControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rsquest_controller_index_url
    assert_response :success
  end

end

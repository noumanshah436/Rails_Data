require 'test_helper'

class ParamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get params_index_url
    assert_response :success
  end

end

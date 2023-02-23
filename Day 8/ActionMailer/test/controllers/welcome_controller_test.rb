require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get send_email" do
    get welcome_send_email_url
    assert_response :success
  end

end

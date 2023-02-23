require 'test_helper'

class RenderingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get renderings_index_url
    assert_response :success
  end

  test "should get show" do
    get renderings_show_url
    assert_response :success
  end

  test "should get hey" do
    get renderings_hey_url
    assert_response :success
  end

end

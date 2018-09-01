require 'test_helper'

class ApplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apples_url
    assert_response :success
  end

  test "should get show" do
    get apple_url(1)
    assert_response :success
  end

end

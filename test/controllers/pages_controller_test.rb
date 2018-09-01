require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_url
    assert_response :success
  end

  test "should get show" do
    get page_url(1)
    assert_response :success
  end

end

require 'test_helper'

class Schools::HighSchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get high_schools_url
    assert_response :success
  end

  test "should get show" do
    get high_school_url(1)
    assert_response :success
  end

end

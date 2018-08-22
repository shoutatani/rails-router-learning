require 'test_helper'

class Schools::HighSchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schools_high_schools_index_url
    assert_response :success
  end

  test "should get show" do
    get schools_high_schools_show_url
    assert_response :success
  end

end

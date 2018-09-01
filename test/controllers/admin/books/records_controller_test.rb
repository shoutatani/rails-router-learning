require 'test_helper'

class Admin::Books::RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_book_records_url({book_id: 1})
    assert_response :success
  end

  test "should get show" do
    get admin_book_records_url({book_id:1, id: 2})
    assert_response :success
  end

end

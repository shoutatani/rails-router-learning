require 'test_helper'

class Admin::BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_books_url
    assert_response :success
  end

  test "should get show" do
    get admin_book_url(1)
    assert_response :success
  end

end

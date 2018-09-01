require 'test_helper'

class Admin::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_book_articles_url({book_id: 1})
    assert_response :success
  end

  test "should get show" do
    get admin_article_url({id: 2})
    assert_response :success
  end

end

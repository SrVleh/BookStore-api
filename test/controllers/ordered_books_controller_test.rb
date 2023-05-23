require "test_helper"

class OrderedBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordered_book = ordered_books(:one)
  end

  test "should get index" do
    get ordered_books_url, as: :json
    assert_response :success
  end

  test "should create ordered_book" do
    assert_difference("OrderedBook.count") do
      post ordered_books_url, params: { ordered_book: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show ordered_book" do
    get ordered_book_url(@ordered_book), as: :json
    assert_response :success
  end

  test "should update ordered_book" do
    patch ordered_book_url(@ordered_book), params: { ordered_book: {  } }, as: :json
    assert_response :success
  end

  test "should destroy ordered_book" do
    assert_difference("OrderedBook.count", -1) do
      delete ordered_book_url(@ordered_book), as: :json
    end

    assert_response :no_content
  end
end

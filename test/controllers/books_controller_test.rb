require "test_helper"

describe BooksController do
  it "should get index" do
    # Act
    get "/books"

    # Assert
    must_respond_with :success
  end
end

describe "show" do
  it "will get show for valid ids" do
    # Arrange
    valid_book_id = 1

    # Act
    get "/books/#{valid_book_id}"

    # Assert
    must_respond_with :success
  end

  it "will respond with not_found for invalid ids" do
    # Arrange
    invalid_book_id = 999

    # Act
    get "/books/#{invalid_book_id}"

    # Assert
    must_respond_with :not_found
  end
end
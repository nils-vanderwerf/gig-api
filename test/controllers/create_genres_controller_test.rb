require "test_helper"

class GenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_genre = create_genres(:one)
  end

  test "should get index" do
    get create_genres_url, as: :json
    assert_response :success
  end

  test "should create genre" do
    assert_difference("CreateGenre.count") do
      post create_genres_url, params: { create_genre: { address: @create_genre.address, name: @create_genre.name } }, as: :json
    end

    assert_response :created
  end

  test "should show genre" do
    get create_genre_url(@create_genre), as: :json
    assert_response :success
  end

  test "should update genre" do
    patch create_genre_url(@create_genre), params: { create_genre: { address: @create_genre.address, name: @create_genre.name } }, as: :json
    assert_response :success
  end

  test "should destroy _genre" do
    assert_difference("CreateGenre.count", -1) do
      delete create_genre_url(@create_genre), as: :json
    end

    assert_response :no_content
  end
end

require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { release_year: @movie.release_year, title: @movie.title } }
    end

    assert_redirected_to movies_url
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { release_year: @movie.release_year, title: @movie.title } }
    assert_redirected_to movies_url
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_url
  end
end

require 'test_helper'

class Api::V1::MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    post api_user_session_url, params: { api_user: { email: @user.email, password: '123456' } }
    @movie = movies(:one)
    @person = people(:one)
  end

  test "should get movies" do
    get api_v1_movies_url
    assert_response :success
  end

  test "should get movie" do
    get api_v1_movie_url(@movie.id)
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post api_v1_movies_url, params: { movie: { release_year: @movie.release_year, title: @movie.title, casting_ids: [@person.id] } }
    end

    json_response = JSON.parse(response.body)
    assert_response :success
    assert_equal(json_response["title"], @movie.title)
  end

  test "should update movie" do
    put api_v1_movie_url(@movie.id), params: { movie: { release_year: 2010, title: 'New Movie Title' } }
    
    json_response = JSON.parse(response.body)
    assert_response :success
    refute_equal(json_response["title"], @movie.title)
  end

end

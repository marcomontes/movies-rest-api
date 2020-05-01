require 'test_helper'

class Api::V1::PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    post api_user_session_url, params: { api_user: { email: @user.email, password: '123456' } }
    @person = people(:one)
    @movie = movies(:one)
  end

  test "should get people" do
    get api_v1_people_url
    assert_response :success
  end

  test "should get person" do
    get api_v1_person_url(@person.id)
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post api_v1_people_url, params: { person: { first_name: @person.first_name, last_name: @person.last_name, aliases: @person.aliases, movies_as_actor: [@movie.id] } }
    end

    json_response = JSON.parse(response.body)
    assert_response :success
    assert_equal(json_response["first_name"], @person.first_name)
  end

  test "should update person" do
    put api_v1_person_url(@person.id), params: { person: { first_name: 'Rob', last_name: 'Wee', aliases: ['roby'] } }
    
    json_response = JSON.parse(response.body)
    assert_response :success
    refute_equal(json_response["first_name"], @person.first_name)
  end

end

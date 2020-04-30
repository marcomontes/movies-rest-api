# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'GET #index' do
    it 'shows all movies' do
      get '/api/v1/movies', format: :json
      expect(last_response.status).to eq(200)
      expect(last_response.body).to include("title")
      expect(last_response.body).to include("release_year")
    end
  end

  #describe 'POST #create' do
  #  it 'creates a new movie' do
  #    skip 'add test'
  #  end
  #end

end
class Api::V1::MoviesController < Api::V1::BaseController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
    render json: @movies
  end

  def show
    render json: @movie
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie, status: :accepted
    else
      render json: @movie.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy
    render json: { message: 'Movie was successfully destroyed.' }, status: :accepted
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(
        :title,
        :release_year,
        :casting_ids => [],
        :director_ids => [],
        :producer_ids => []
      )
    end
end

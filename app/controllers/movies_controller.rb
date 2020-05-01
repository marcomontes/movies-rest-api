class MoviesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_movie, only: [:edit, :update, :destroy]
  before_action :clean_params, only: [:create, :update]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_url, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_url, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url, notice: 'Movie was successfully destroyed.'
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def clean_params
      params[:movie][:casting_ids].reject!(&:empty?)  if params[:movie][:casting_ids]
      params[:movie][:director_ids].reject!(&:empty?) if params[:movie][:director_ids]
      params[:movie][:producer_ids].reject!(&:empty?) if params[:movie][:producer_ids]
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

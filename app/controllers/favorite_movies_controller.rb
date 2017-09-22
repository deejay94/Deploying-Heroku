class FavoriteMoviesController < ApplicationController
  before_action :set_favorite_movie, only: [:show, :update, :destroy]

  # GET /favorite_movies
  def index
    @favorite_movies = FavoriteMovie.all

    render json: @favorite_movies
  end

  # GET /favorite_movies/1
  def show
    render json: @favorite_movie
  end

  # POST /favorite_movies
  def create
    @favorite_movie = FavoriteMovie.new(favorite_movie_params)

    if @favorite_movie.save
      render json: @favorite_movie, status: :created
      render json: @favorite_movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_movies/1
  def update
    if @favorite_movie.update(favorite_movie_params)
      render json: @favorite_movie
    else
      render json: @favorite_movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_movies/1
  def destroy
    @favorite_movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_movie
      @favorite_movie = FavoriteMovie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_movie_params
      params.require(:favorite_movie).permit(:title, :genre, :comment)
    end
end

class FavoriteMoviesController < ProtectedController
  before_action :set_favorite_movie, only: %i[update destroy]

  # GET /favorite_movies
  def index
    @favorite_movies = current_user.favorite_movies

    render json: @favorite_movies
  end

  # GET /favorite_movies/1
  def show
    render json: FavoriteMovie.find(params[:id])
  end

  # POST /favorite_movies
  def create
    @favorite_movie = current_user.favorite_movies.build(favorite_movie_params)

    if @favorite_movie.save
      render json: @favorite_movie, status: :created
    else
      render json: @favorite_movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_movies/1
  def update
    if @favorite_movie.update(favorite_movie_params)
      head :no_content
    else
      render json: @favorite_movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_movies/1
  def destroy
    @favorite_movie.destroy

    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_movie
      @favorite_movie = current_user.favorite_movies.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def favorite_movie_params
    params.require(:favorite_movie).permit(:title, :genre, :comment)
  end

  private :set_favorite_movie, :favorite_movie_params
end

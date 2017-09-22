class AddUserToFavoriteMovies < ActiveRecord::Migration[5.1]
  def change
    add_reference :favorite_movies, :user, foreign_key: true
  end
end

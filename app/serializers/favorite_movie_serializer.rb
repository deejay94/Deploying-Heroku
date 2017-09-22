class FavoriteMovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :comment
end

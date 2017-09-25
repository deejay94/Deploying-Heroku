class FavoriteMovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :comment # :editable
end

# def editable
#   scope == object.user
# end

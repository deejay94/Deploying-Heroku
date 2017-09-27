class FavoriteMovie < ApplicationRecord
  belongs_to :user

  validates :title, :genre, :comment, :user, presence: true
end

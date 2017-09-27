class FavoriteMovie < ApplicationRecord
  belongs_to :user

  validates :comment, :user, presence: true
end

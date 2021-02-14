class FavoriteSound < ApplicationRecord
  belongs_to :user
  belongs_to :sound

  validates :favorite, presence: true
end

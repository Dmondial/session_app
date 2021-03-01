class Mypage < ApplicationRecord
  has_one_attached :image_icon
  belongs_to :user
end

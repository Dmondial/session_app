class Mypage < ApplicationRecord
  belongs_to :user
  has_one_attached :image_icon
  has_one_attached :image_bg
end

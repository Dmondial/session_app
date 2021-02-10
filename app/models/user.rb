class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  has_many :sounds
  has_one :mypage
  has_many :user_rooms
  has_many :rooms ,through: :user_rooms
  
  
end

class Session < ApplicationRecord
  has_many :session_sounds 
  has_many :sounds, through: :session_sounds
  
end

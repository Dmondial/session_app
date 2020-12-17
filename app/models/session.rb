class Session < ApplicationRecord
  has_many :sounds, through: session_sounds
  has_many :session_sounds 
end

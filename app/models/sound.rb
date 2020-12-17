class Sound < ApplicationRecord
  # has_one_attached :audio
  belongs_to :user
  has_many :session, through: session_sounds
  has_many :session_sounds
  mount_uploader :file, AudioFileUploader
end

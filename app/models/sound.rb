class Sound < ApplicationRecord
  # has_one_attached :audio
  belongs_to :user
  mount_uploader :file, AudioFileUploader
end

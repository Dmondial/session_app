class Sound < ApplicationRecord
  # has_one_attached :audio
  belongs_to :user
  has_many :session_sounds
  has_many :sessions, through: :session_sounds
  
  mount_uploader :file, AudioFileUploader

  with_options presence: true do
    validates :title
    validates :file
    validates :user_id
  end

    

end

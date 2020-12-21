class SessionSound < ApplicationRecord
  belongs_to :session
  belongs_to :sound
end

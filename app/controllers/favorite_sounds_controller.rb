class FavoriteSoundsController < ApplicationController
  def index
    @sound = Sound.where(user_id: current_user.id)
  end

  def create
    binding.pry
  end

  def update
  end

  private
  # def favorite_sounds_params
  #   params.require(:favorite_sound).permit(:user_id, :sound_id, :favorite)
  # end
end

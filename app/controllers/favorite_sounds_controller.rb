class FavoriteSoundsController < ApplicationController
  before_action :authenticate_user!
  protect_from_forgery
  def index
    @favorite_sound = FavoriteSound.where(user_id: current_user.id)
    @favorite_sounds_new = FavoriteSound.new
    @sound = Sound.all.order("created_at DESC")
  end

  def create
    @favorite_sound = FavoriteSound.new(favorite_sounds_params)
    if @favorite_sound.save
      # redirect_to root_path
      render json:{ favorite_sound: @favorite_sound }
    else
      render root_path
    end
  end

  def destroy
    @favorite_sound = FavoriteSound.find(params[:id])
    favorite_sound = @favorite_sound
    if  @favorite_sound.destroy
      # render json:{ user_id: @favorite_sound.user_id, sound_id: @favorite_sound.sound_id }
      # render json:{ favorite_sound: favorite_sound }
    else
      render root_path
    end
  end

  private
  def favorite_sounds_params
    params.require(:favorite_sound).permit(:user_id, :sound_id, :favorite)
  end
end

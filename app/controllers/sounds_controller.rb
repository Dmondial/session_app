class SoundsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @sound = Sound.all.order("created_at DESC")
    @favorite_sound = FavoriteSound.all
    @favorite_sounds_new = FavoriteSound.new
  end

  def new
    @sound = Sound.new
  end

  def create
    @sound = Sound.new(sound_params)
    if @sound.save
      redirect_to root_path
    else
      render new_sound_path
    end
  end

  def show
    if params[:sound].present?
      @sound= Sound.find(params[:id])
      @sound_all = Sound.all
      @sound_ids = params[:sound][:sound_ids]
      redirect_to sound_path(params[:id])

    end
    @sound= Sound.find(params[:id])
    @sound_all = Sound.all
   
  end

  def sound_for 
    @sound = Sound.find(params[:id]).audio
    send_file url_for(@sound)
  end

  private

  def sound_params
    params.require(:sound).permit(:title, :explain, :file).merge(user_id: current_user.id)
  end



end

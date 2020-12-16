class SoundsController < ApplicationController
  def index
    @sound = Sound.all
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

  def sound_for 
    @sound = Sound.find(params[:id]).audio
    send_file url_for(@sound)
  end

  private

  def sound_params
    params.require(:sound).permit(:title, :explain, :file).merge(user_id: current_user.id)
  end



end

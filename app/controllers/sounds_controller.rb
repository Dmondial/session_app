class SoundsController < ApplicationController
  def index
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

  private

  def sound_params
    params.require(:sound).permit(:title, :explain, :audio).merge(user_id: current_user.id)
  end
end

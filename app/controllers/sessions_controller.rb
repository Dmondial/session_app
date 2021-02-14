class SessionsController < ApplicationController
  
  
  def index
    @sound = Sound.find(params(:sound_ids))
  end

  def new
    @session = Session.new
    
  end

  def create
    if (session_params[:sound_ids].length > 1) && (session_params[:sound_ids].length != nil)
      @session = Session.new(session_params)
    else
      @session = Session.new(room:session_params[:room], sound_ids: nil)
    end

    if @session.save
      redirect_to session_path(@session.id)
    else
      @sound = Sound.all
      @title_id = @sound.find(params[:session][:sound_ids][0].to_i)
      render :sound_for
    end
  end

  def show
    @session = Session.find(params[:id])
    @sound = @session.sounds
    @favorite_sound = FavoriteSound.where(user_id: current_user.id)
    @favorite_sounds_new = FavoriteSound.new
  end

  def sound_for
    @session = Session.new
    @sound = Sound.all
  end

  private

  def session_params
     params.require(:session).permit(:room, sound_ids: [])
  end

end
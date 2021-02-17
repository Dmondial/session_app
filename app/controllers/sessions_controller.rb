class SessionsController < ApplicationController
  
  
  def index
    @session = Session.all
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

    @session_all = Session.all
    # @session_sounds_all = SessionSound.all

    @session_all.each do |session|
      if session.sound_ids.length == @session.sound_ids.length
        saved_session = session.sound_ids.sort
        new_session = @session.sound_ids.sort
        eq_id = 0
        new_session.length.times do |i|
          if saved_session[i] == new_session[i]
            eq_id += 1
          end
        end
        binding.pry

        if eq_id == new_session.length
          redirect_to session_path(session.id)  
        end
      end
    end

    binding.pry
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

  def destroy
    @session = Session.find(params[:id])
    if  @session.destroy
      redirect_to mypages_path
    else
      render root_path
    end
  end

  private

  def session_params
     params.require(:session).permit(:room, sound_ids: [])
  end

end
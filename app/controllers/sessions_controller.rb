class SessionsController < ApplicationController
  def index
    @sound = Sound.find(params(:sound_ids))
  end

  def new
    @session = Session.new
    
  end

  def create
    binding.pry
    @session = Session.new(session_params)
    if @session.save
      redirect_to session_path(@session.id)
    else
      render :new
    end
  end

  def show
    @session = Session.find(params[:id])
    @sound = @session.sound
  end

  def sound_for
    @session = Session.new
  end

  private

  def session_params
     params.require(:session).permit(:room, sound_ids: [])
  end

end
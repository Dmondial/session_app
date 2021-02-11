class RoomsController < ApplicationController
  def index
    @user_room = UserRoom.all
    @room = Room.where(user_id: "#{current_user.id}")
    @user = User.all
  end

  def new
    @user = User.all
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  private
  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end


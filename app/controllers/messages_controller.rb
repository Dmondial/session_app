class MessagesController < ApplicationController
  def index
    @room = Room.all
    @user_room = UserRoom.all
    @user = User.all
  end
end

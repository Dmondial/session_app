class MypagesController < ApplicationController
  def index
    @user = User.find(current_user[:id])
    @sound = Sound.where(user_id: current_user[:id])
  end
end

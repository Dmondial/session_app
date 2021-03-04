class MypagesController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @user = User.find(current_user[:id])
    @sound = Sound.where(user_id: current_user[:id])
    @session = Session.all
    @session_sound = SessionSound.all
  end

  def new
    @mypage = Mypage.new
  end

  def create
    @mypage = Mypage.new(mypage_params)
    if @mypage.save
      redirect_to mypages_path
    else
      render new_mypage_path
    end
  end
    

  def edit
    @mypage = Mypage.find(params[:id])
  end

  def update
    @mypage = Mypage.find(params[:id])
    if @mypage.update(mypage_params)
        redirect_to mypages_path
    else
        render edit_mypage_path
    end
  end
end

private
def mypage_params
  params.require(:mypage).permit(:nickname,:profile, :image_icon, :image_bg).merge(user_id: current_user[:id] )
end
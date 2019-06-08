class Admins::UsersController < ApplicationController
     layout "admin"
      before_action :authenticate_admin! 
  def new
  end

  def index
     @games = Game.search(params[:search])
     @users = User.all
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to admins_users_path
  end

  private
    def user_params
      params.require(:user).permit(:nickname, :email, :deleted_at, :image)
    end

end

class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    

  end

  def edit
    @user = current_user
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private
    def user_params
      params.require(:user).permit(:nickname, :email, :deleted_at,{images: []})
    end

end

class AdminsController < ApplicationController
    layout "admin"
    def index
       @users = User.all
    end
  
    def show
    end
  
    def edit
    end

    
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to users_path(user.id)
  end


    def delete
    user = User.find(params[:id])
    user.update(user_params)
      redirect_to users_path
    end

private
    def user_params
      params.require(:user).permit(:nickname, :image,:email, :deleted_at)
    end


  end
  
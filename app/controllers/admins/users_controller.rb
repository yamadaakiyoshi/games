class Admins::UsersController < ApplicationController
     layout "admin"
      before_action :authenticate_admin! 
  def new
  end

  def index
     @games = Game.search(params[:search])
  end

  def show
  end

  def edit
    
  end
end

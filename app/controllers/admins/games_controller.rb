class Admins::GamesController < ApplicationController
     layout "admin"
  def new
    @game = Game.new
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
      @game = Game.new(game_params)
      binding.pry
      if @game.save
        redirect_to admins_path
      else
        render "new"
      end
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
        redirect_to admins_path
      else
        render "edit"
      end
end

  def edit
    @game = Game.find(params[:id])
  end

  def destroy
      @game = Game.find(params[:id])
      binding.pry
      if @game.destroy
         redirect_to admins_path
      else
        render "edit"
      end
  end
  
  private
  def game_params
    params.require(:game).permit(:title,:introduction,:image,:genre_id)
  end
end

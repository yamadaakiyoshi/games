class Admins::GamesController < ApplicationController
     layout "admin"
  def new
    @game = Game.new
  end

  def index
    @games = Game.all
  end

  def show
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


  def edit
  end
  private
  def game_params
    params.require(:game).permit(:title,:introduction,:image,:genre_id)
  end
end

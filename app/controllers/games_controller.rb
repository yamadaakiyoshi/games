class GamesController < ApplicationController
  def new
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
  end
end

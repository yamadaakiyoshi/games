class GamesController < ApplicationController
  def new
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @post = Post.new
  end


  def create
     post = Post.new(post_params)
    post.user_id = current_user.id
    binding.pry
    if  post.save
      redirect_to root_path
    else
      render "show"
    end
   
  end

  def edit
  end
  private
  def post_params
    params.require(:post).permit(:video,:image, :post_text, :game_id)
  end
end

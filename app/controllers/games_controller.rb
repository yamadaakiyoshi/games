class GamesController < ApplicationController
  def new
  end

  def index
    @games = Game.search(params[:search])
  end

  def show
    @game = Game.find(params[:id])
    @games = Game.all
    @new_post = Post.new
    # @post = Post.find(params[:id])
    @posts = Post.all
    @postcoment = Postcoment.new
    @postcoments = Postcoment.all
  end


  def create
     post = Post.new(post_params)
     post.user_id = current_user.id
    if  post.save
      redirect_to game_path(post.game.id),notice: "投稿を作成しました"
    else
      
      render "show"
    end
   
  end

  def edit
  end
  private
  def post_params
    params.require(:post).permit(:video, :image, :post_text, :game_id)
  end
end

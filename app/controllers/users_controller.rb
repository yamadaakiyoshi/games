class UsersController < ApplicationController
  before_action :authenticate_user! 
  def index
    
  end

  def show
    @user = current_user    
    @favorite = current_user.games 
    @posts = current_user.posts
   
    # my_favorites = Favorite.where(user_id: current_user.id).pluck(:game_id)
    # //自分のいいねしたgame_idを配列で取得
    # @my_games = Game.where(id: my_favorites)
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
      params.require(:user).permit(:nickname, :email, :deleted_at, :image)
    end

end

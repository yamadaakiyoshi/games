class FavoritesController < ApplicationController
   before_action :authenticate_user!
 before_action :set_game, only: [:game_favorite,:game_unfavorite]
 before_action :set_post, only: [:post_favorite,:post_unfavorite]



  def game_favorite

    # //create
    favorite = current_user.favorites.new(game_id: @game.id)
    favorite.save
  end

  def game_unfavorite
    # destorys
    favorite = current_user.favorites.find_by(game_id: @game.id)
    favorite.destroy
  end

  def post_favorite

    favorite = current_user.favorites.new(post_id: @post.id)
    favorite.save
  end

   def post_unfavorite

    favorite = current_user.favorites.find_by(post_id: @post.id)
    favorite.destroy
  end


  private

  def set_game
    @game = Game.find(params[:game_id])
    @id_name = "#favorite-game-#{@game.id}"
  end

    def set_post
    @post = Post.find(params[:post_id])
    @id_name = "#favorite-post-#{@post.id}"
  end

end




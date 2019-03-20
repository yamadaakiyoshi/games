class PostsController < ApplicationController

def destroy
    game =  Game.find(params[:game_id])
     post = game.posts.find_by(game_id: game.id)
    post.destroy
    redirect_to game_path(post.game_id)
    
  end
end
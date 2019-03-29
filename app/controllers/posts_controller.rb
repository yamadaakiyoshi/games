class PostsController < ApplicationController
   before_action :authenticate_user! 

def destroy
    # game =  Game.find(params[:game_id])
    #  post = game.posts.rai_id: game.id)
    post = Post.find(params[:id])
    post.destroy
    redirect_to game_path(post.game_id)
    
  end
end
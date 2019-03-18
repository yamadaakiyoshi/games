class PostcomentsController < ApplicationController
  
  def create
     postcoment = Postcoment.new(postcoment_params)
     postcoment.user_id = current_user.id
     post =  Post.find(params[:post_id])
     postcoment.post_id = post.id
    if  postcoment.save
      redirect_to game_path(post.game_id)
    else
      render "show"
    end   
   end
 
   private
  def postcoment_params
    params.require(:postcoment).permit(:content)
  end
end

class ApplicationController < ActionController::Base

  protected



  def after_sign_in_path_for(resource)
    # ログイン後に遷移するpathを設定
    if current_admin.present?
        admins_games_path
    else
         user_path(current_user)
    end
  end 

  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end
end

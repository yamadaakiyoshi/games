Rails.application.routes.draw do
  
  root 'games#top'
namespace :admins do
  get '/admins' => "games#index", as: "admins" # 管理用top
end
  
  
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
namespace :admins do
  resources :users
  resources :games
  resources :posts,only:[:index]
end

resources :users 


  resources :games do
  resource :favorites, only:[:create,:destroy]
  end

  resources :posts do
    resource :postcoments,only:[:create,:destroy]
  end
  post   '/favorites/:game_id' => 'favorites#game_favorite',   as: 'game_favorite' #いいね
  delete '/favorites/:game_id' => 'favorites#game_unfavorite', as: 'game_unfavorite' #いいね取り消し

  post   '/favorite/:post_id' => 'favorites#post_favorite',   as: 'post_favorite' #いいね
  delete '/favorite/:post_id' => 'favorites#post_unfavorite',  as: 'post_unfavorite' #いいね取り消し





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

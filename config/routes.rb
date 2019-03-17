Rails.application.routes.draw do
  
  root 'games#top'
  get '/admins' => "admins#index", as: "admins" # 管理用top
  
  
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
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
  resource :favorites,only:[:create,:destroy]
  end

  resources :posts do
    resource :favorites,only:[:create,:destroy]
    resource :postcoments,only:[:create,:destroy]
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
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
namespace :admin do
  resources :users
  resources :games
  resource :posts,only:[:index]
end

resources :users 


  resources :games do
  resource :favorites,only:[:create,:destroy]
  end

  resources :posts do
    resource :favorites,only:[:create,:destroy]
    resource :postcoments,only:[:create,:destroy]
  end



  root 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

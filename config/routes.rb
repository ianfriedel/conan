Rails.application.routes.draw do
  resources :comments
  devise_for :admins
  devise_for :users
  root 'home#index'
  get '/drinks' => 'drinks#index'
  get '/breakfast' => 'breakfast#index'
  get '/lunch' => 'lunch#index'
  get '/dinner' => 'dinner#index'
  get '/appetizer' => 'appetizer#index'
  get '/desserts' => 'desserts#index'
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'homes#top'
  get "about" => 'homes#about'
  resources:users, only: [:show, :edit, :update]
  resources:posts
  resources :maps, only: [:new, :create, :index]
end

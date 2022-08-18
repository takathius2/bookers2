Rails.application.routes.draw do
  devise_for :users
  get 'home/about', to: 'homes#about'
  root to: "homes#top"
  resources :books
  resources :users, only: [:show, :edit, :index, :update, :create,]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
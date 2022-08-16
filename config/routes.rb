Rails.application.routes.draw do
  get 'home/about', to: 'homes#show', as: :about
  post 'books/book.id' => 'books#create'
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:show, :edit, :index, :create, :new, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update, :create,]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
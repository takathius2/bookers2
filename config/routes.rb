Rails.application.routes.draw do
  get 'homes/about', to: 'homes#show', as: :about
  post 'books/book.id' => 'books#create'
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:show, :edit, :index, :create, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
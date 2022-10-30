Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :books, only: [:new, :index, :show, :edit, :update, :create, :destroy]
  resources :users, only: [:index, :show, :edit, :update]


  get "/home/about" => "homes#about", as: "about"

end

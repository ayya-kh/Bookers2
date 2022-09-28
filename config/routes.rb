Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'books/top'
  root to: "homes#top"
  devise_for :users
  
end

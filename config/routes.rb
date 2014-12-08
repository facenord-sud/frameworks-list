Rails.application.routes.draw do
  resources :categories

  resources :comments

  resources :frameworks

  root 'static_page#about'

  devise_for :users
end

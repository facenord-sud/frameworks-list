Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :categories, only: [:index] do
    get 'frameworks', action: :index, controller: :frameworks
  end

  resources :frameworks, only: [:show, :update, :create, :new, :edit] do
    resources :comments, only: :create
  end

  root 'frameworks#index'

  devise_for :users
end

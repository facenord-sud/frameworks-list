Rails.application.routes.draw do
  root 'static_page#about'

  devise_for :users
end

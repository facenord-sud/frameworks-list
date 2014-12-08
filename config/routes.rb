Rails.application.routes.draw do
  root to: 'static_page/about'

  devise_for :users
end

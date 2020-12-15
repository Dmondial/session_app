Rails.application.routes.draw do
  devise_for :users

  resources :sounds
  root to:"sounds#index"
end

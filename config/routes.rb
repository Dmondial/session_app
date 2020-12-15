Rails.application.routes.draw do
  devise_for :users

  resources :sounds do
   member do
    get 'sound_for'
    end
  end
  
  root to:"sounds#index"
end

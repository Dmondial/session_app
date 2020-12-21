Rails.application.routes.draw do
  root to:"sounds#index"
  devise_for :users

  resources :sounds do
   member do
    get 'sound_for'
    end
  end

  resources :sessions  do
    member do
      get 'sound_for'
    end
  end
  
end

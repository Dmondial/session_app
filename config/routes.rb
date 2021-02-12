Rails.application.routes.draw do
  root to:"sounds#index"
  devise_for :users
  devise_scope :user do
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

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

  resources :mypages ,only: :index
  resources :rooms ,only: [:index,:new, :create] do
    resources :messages ,only: [:index,:new, :create]
  end
  
end

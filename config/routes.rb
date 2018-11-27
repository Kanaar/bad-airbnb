Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [] do
    resources :listings, only: [:index, :new, :create]
  end


  resources :listings, only: [:show, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
end



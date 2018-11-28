Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'

  resources :users, only: [] do
    resources :listings, only: [:index, :new, :create]
  end


  resources :listings, only: [:show, :index, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
end



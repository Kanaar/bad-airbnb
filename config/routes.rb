Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'

  # resources :users, only: []
  # do
  #   resources :listings, only: [:index, :new, :create]
  # end
  get '/users/:user_id/listings', to: 'listings#host_index', as: 'user_listings'


  resources :listings, only: [:show, :index, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
end



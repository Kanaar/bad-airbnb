Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#home'

  # resources :users, only: []
  # do
  #   resources :listings, only: [:index, :new, :create]
  # end
  get '/users/:user_id/listings', to: 'listings#host_index', as: 'user_listings'
  get '/users/:user_id/user_listings', to: 'listings#new', as: 'new_listing'
  patch '/users/:user_id/user_listings', to: 'listings#create'




  resources :listings, only: [:show, :index, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
end



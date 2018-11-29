Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#home'

  get 'my_listings', to: 'listings#my_listings', as: 'my_listings' # /my_listings
  resources :listings, only: [:new, :create, :show, :index] do
    resources :bookings, only: [:create] # /listings/:listing_id/bookings # post -> #create method
  end
  resources :bookings, only: [:index] # /bookings
end

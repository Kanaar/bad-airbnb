Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#home'

  get '/users/:user_id/listings', to: 'listings#host_index', as: 'user_listings'
  get '/users/:user_id/user_listings', to: 'listings#new', as: 'new_listing'
  patch '/users/:user_id/user_listings', to: 'listings#create'

  get '/users/:user_id/bookings', to: 'bookings#index', as: 'user_bookings'
  get '/users/:user_id/listing/:id', to: 'bookings#new', as: 'new_listing_booking'
  post '/users/:user_id/listing/:id', to: 'bookings#create'


  resources :listings, only: [:show, :index, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :create]
  end
end



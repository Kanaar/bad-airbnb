Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :listings do
    resources :bookings, only: [:index, :create, :update]
  end
  resources :bookings, only: [:new, :show, :edit, :destroy]
end



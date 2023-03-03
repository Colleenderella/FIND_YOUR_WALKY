Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/profile", to: "profile#profile"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :companions do
    resources :bookings, only: [:new, :create]
  end

  get '/bookings/:id/accept', to: 'bookings#accept', as: 'booking_accept'
  get '/bookings/:id/decline', to: 'bookings#decline', as: 'booking_decline'
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get '/privacy_policy', to: 'home#privacy_policy'

  resources :account_requests, only: [:new, :create]
end

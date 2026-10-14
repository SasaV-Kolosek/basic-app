Rails.application.routes.draw do
  resources :items
  resources :users, only: %i[ create ]
  get "signup", to: "users#new", as: :signup
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

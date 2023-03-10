Rails.application.routes.draw do
  resources :clients
  resources :users, only: %i[index show update delete]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
end

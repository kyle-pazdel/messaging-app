Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # User Routes
  post "users" => "users#create"

  # Session Routes
  post "/sessions" => "sessions#create"

  # Conversation Routes
  get "/conversations" => "conversations#index"
  post "/conversations" => "conversation#create"

  # Message Routes
  get "/messages" => "messages#index"
  post "/messages" => "messages#create"
end

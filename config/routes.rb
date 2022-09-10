Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :conversations do
    resources :messages
  end
  # Defines the root path route ("/")
  # root "articles#index"

  # User Routes
  post "users" => "users#create"

  # Session Routes
  post "/sessions" => "sessions#create"

  # Conversation Routes
  get "/conversations/messages" => "conversations/messages#index"
  get "/conversations" => "conversations#show"
end

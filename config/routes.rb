Rails.application.routes.draw do
  root "articles#index"
  resources :articles do
    resources :comments
  end

  # articles routes
  # get "/", to: "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/new", to: "articles#new"
  # get "/articles/:id", to: "articles#show"
  # post "/articles/create", to: "articles#create"

  # get "/hello", to: "hello#index"
end


Rails.application.routes.draw do
  root "articles#index"

  # scope module: :admin do
  #   resources :posts
  # end

  # shallow do
  #   resources :articles do
  #     resources :comments
  #     resources :ratings
  #   end
  # end

  # resources :article do
  #   resources :comments
  # end

  # articles routes
  # get "/", to: "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/new", to: "articles#new"
  # get "/articles/:id", to: "articles#show"
  # post "/articles/create", to: "articles#create"

  # get "/hello", to: "hello#index"
end


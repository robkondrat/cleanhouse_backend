Rails.application.routes.draw do
  namespace :api do
    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"
    get "/rooms/:id" => "rooms#show"
    put "rooms/:id" => "rooms#update"
    delete "rooms/:id" => "rooms#destroy"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "users/:id" => "users#show"
    put "users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"
  end
end

Rails.application.routes.draw do
  namespace :api do
    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"
    get "/rooms/:id" => "rooms#show"
    put "rooms/:id" => "rooms#update"
    delete "rooms/:id" => "rooms#destroy"
  end
end

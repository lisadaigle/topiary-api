Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/plants" => "plants#index"
  post "/user_plants" => "user_plants#create"
  get "/user_plants" => "user_plants#index"
  get "/carted_plants" => "carted_plants#index"
  resources :carted_plants, only: [:create]
end

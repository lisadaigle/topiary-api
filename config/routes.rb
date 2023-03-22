Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/plants" => "plants#index"
  post "/user_plants" => "user_plants#create"
end

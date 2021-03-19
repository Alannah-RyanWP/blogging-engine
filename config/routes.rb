Rails.application.routes.draw do
  root "users#index"
  get "/users/signin", to: "users#blank"
end

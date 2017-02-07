Rails.application.routes.draw do
  get "users/show"

  get "users/new"

  root "static_pages#home"
  get  "static_pages/home"
  get  "static_pages/help"
  get  "static_pages/about"
  get  "static_pages/contact"
  post "/signup",  to: "users#create"
  resources :users
end

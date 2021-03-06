Rails.application.routes.draw do
  get "session/new"
  get "session/create"
  root "static_pages#home"
  get  "static_pages/home"
  get  "help", to: "static_pages#help"
  get  "about", to: "static_pages#about"
  get  "contact", to: "static_pages#contact"
  get  "/login",   to: "session#new"
  post "/login",   to: "session#create"
  delete "/logout",  to: "session#destroy"
  post "/signup",  to: "users#create"
  get  "/signup", to: "users#new"
  resources :users do
    resources :relationships, only: :index
  end
  resources :account_activations, only: :edit
  resources :password_resets, except: [:index, :show, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end

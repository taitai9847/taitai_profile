Rails.application.routes.draw do
  get "mypage", to: "users#me"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "/homes", to: "homes#index"
  get "/homes/login", to: "homes#login"
  root 'homes#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boards
  resources :users, only: %i[new create]
end

Rails.application.routes.draw do
  # get 'homes/index'
  get "/homes", to: "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boards
end

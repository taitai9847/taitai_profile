Rails.application.routes.draw do
  # get 'homes/index'
  get "/homes", to: "homes#index"
  get "/homes/works", to: "homes#work"
  get "/homes/contact", to: "homes#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boards
end

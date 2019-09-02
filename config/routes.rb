Rails.application.routes.draw do
  get 'admin/dashboard'
  get 'home/user_guidelines'
  resources :categories
  resources :products
  devise_for :users
  get 'home/index'
  root 'home#index'
  namespace :admin, module: nil  do
    root "admin#dashboard"
    resources :users
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :wishlists
  resources :carrers
  resources :carts
  get 'admin/dashboard'
  get 'home/user_guidelines'
  resources :categories
  resources :products
  devise_for :users
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/customercare'
  get 'home/job'
  get 'home/bsuppliers'
  get 'home/brequirements'
  get 'home/bcomplaints'
  get 'home/bfeedbacks'
  get 'home/sprofile'
  get 'home/sadvertise'
  get 'home/sconnect'
  get 'home/spost'
  get 'home/cbuy'
  get 'home/csection'
  get 'home/cfeedbacks'
  get 'home/cdiscount'
  get 'home/feedbacks'











  root 'products#index'
  namespace :admin, module: nil  do
    root "admin#dashboard"
    resources :users
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

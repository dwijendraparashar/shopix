Rails.application.routes.draw do
  resources :bilingaddresses
  post '/rate' => 'rater#create', :as => 'rate'
  resources :billingaddresses
  resources :orders
  # resources :wishlists
  resources :carrers
  # resources :carts
  
  # resources :carts do
  #   collection do
  #     get :product_select 
  #   end
  # end

# resources :states do
#   collection do
#     get :state_select
#   end
#   resources:comments
#  end 






  get 'admin/dashboard'
  get 'home/user_guidelines'
  resources :categories 
  resources :products do
    member do
      get :cart
    end
    # resources :carts
  end
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
  get 'home/privacy'
  

  root 'products#index'
  namespace :admin, module: nil  do
    root "admin#dashboard"
    resources :users
  end

  get "wishlist" => "products#wishlist"
  resources :products do
    get "/wishlist", action: :add_wishlist, as: :add_wishlist
    get "/cart", action: :add_cart, as: :add_cart
  end 

  get "wishlist" => "products#wishlist"
  delete "/remove_wishlist/:id" => "products#remove_wishlist", as: :remove_wishlist



  get "cart_item" => "products#cart_item"

  get "cart" => "products#cart"
  delete "/remove_cart/:id" => "products#remove_cart", as: :remove_cart

  get "/checkout" => "orders#checkout"
  resources :charges

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

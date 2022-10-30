Rails.application.routes.draw do
  root 'products#index'
  #root 'top#main'
  #get 'top/main'
  resources :products
  resources :cartitems, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

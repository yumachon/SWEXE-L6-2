Rails.application.routes.draw do
    get 'top/main'
    #get 'cartitem/new'
    resources :products
    root 'top#main'
    resources :cartitems, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  
  #root to: =>"homes#top"
  
  namespace :admin do
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
  end
  
  namespace :admin do
    get "/" => "homes#top"
    get "about" => "homes#about"
    #resources :sessions, only: [:new, :create, :destroy]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
  end

  namespace :public do
    get "/" => "homes#top"
    get "customers/unsubscribe" => "customers#unsbscribe"
    get "customers/withdraw" => "customers#withdraw"
    get "cart_items/destroy_all" => "cart_items#destroy_all"
    get "orders/confirm" => "orders#confirm"
    get "orders/thanks" => "orders#thanks"
    #resources :registrations, only: [:new, :create]
    #resources :sessions, only: [:new, :create, :destroy]
    resources :items, only: [:index, :show]
    resources :customers, only: [:show, :edit, :update]
    resources :cart_items, only: [:index, :update, :destroy]
    resources :orders, only: [:new, :index, :show, :create]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
  end
end

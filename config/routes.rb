Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  
<<<<<<< HEAD
  namespace :admin do
    get 'order_details/update'
  end
  namespace :admin do
    get 'orders/show'
    get 'orders/update'
  end
  namespace :public do
    get 'addresses/index'
    get 'addresses/edit'
    get 'addresses/create'
    get 'addresses/update'
    get 'addresses/destroy'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/thanks'
    get 'orders/create'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
    get 'customers/unsubscribe'
    get 'customers/withdraw'
  end
  namespace :admin do
    get 'making_status/update'
  end
  namespace :admin do
    get 'status/update'
  end
  namespace :admin do
    get 'order_details/show'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'
  end
  namespace :admin do
    get 'items/index'
    get 'items/new'
    get 'items/create'
    get 'items/show'
    get 'items/edit'
    get 'items/update'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  namespace :public do
    get 'shippings/index'
    get 'shippings/edit'
    get 'shippings/create'
    get 'shippings/update'
    get 'shippings/destroy'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/complete'
    get 'orders/process'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do
    get 'cart_items/index'
    get 'cart_items/update'
    get 'cart_items/destroy'
    get 'cart_items/destroy_all'
    get 'cart_items/create'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
    get 'customers/confirm'
    get 'customers/process'
  end
  namespace :public do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  namespace :public do
    get 'registrations/new'
    get 'registrations/create'
  end
  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
 
=======
  devise_for :customers
  devise_for :admins
  
  #root to: =>"homes#top"
  
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
>>>>>>> origin/develop
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

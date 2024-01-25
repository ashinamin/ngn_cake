Rails.application.routes.draw do

 devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin,skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  root :to =>"public/homes#top"

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

  scope module: :public do
    get "/" => "homes#top"
    get "about" => "homes#about"
    get "customers/unsubscribe" => "customers#unsbscribe"
    get "customers/withdraw" => "customers#withdraw"
    delete "cart_items/destroy_all" => "cart_items#destroy_all"
    #get "orders/confirm" => "orders#confirm"
    get "orders/thanks" => "orders#thanks"
    get "customers/my_page" => "customers#show"
    get "customers/information/edit" => "customers#edit"
    patch "customers/information" => "customers#update"
    #resources :registrations, only: [:new, :create]
    #resources :sessions, only: [:new, :create, :destroy]
    resources :items, only: [:index, :show]
    #resources :customers, only: [:show, :edit, :update]
    resources :cart_items, only: [:index, :update, :destroy, :create]
    resources :orders, only: [:new, :index, :show, :create]
      post "orders/confirm" => "orders#confirm"
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
    resources :customers do
     collection do
       get 'confirm_withdraw'
       patch 'withdraw'
     end
   end
  end
end

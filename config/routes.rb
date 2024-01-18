Rails.application.routes.draw do
  namespace :admin do
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
  end
  
  devise_for :customers
  devise_for :admins
  
  get 'admin_order_details/update'
  get 'admin_orders/show'
  get 'admin_orders/update'
  get 'admin_customers/index'
  get 'admin_customers/show'
  get 'admin_customers/edit'
  get 'admin_customers/update'
  get 'admin_genres/index'
  get 'admin_genres/create'
  get 'admin_genres/edit'
  get 'admin_genres/update'
  get 'admin_homes/top'
  get 'admin_sessions/new'
  get 'admin_sessions/create'
  get 'admin_sessions/destroy'
  
  get 'public_addresses/index'
  get 'public_addresses/edit'
  get 'public_addresses/create'
  get 'public_addresses/update'
  get 'public_addresses/destroy'
  get 'public_orders/new'
  get 'public_orders/confirm'
  get 'public_orders/thanks'
  get 'public_orders/create'
  get 'public_orders/index'
  get 'public_orders/show'
  get 'public_cart_items/index'
  get 'public_cart_items/update'
  get 'public_cart_items/destroy'
  get 'public_cart_items/destroy_all'
  get 'public_cart_items/create'
  get 'public_customers/show'
  get 'public_customers/edit'
  get 'public_customers/update'
  get 'public_customers/unsubscribe'
  get 'public_customers/withdraw'
  get 'public_sessions/new'
  get 'public_sessions/create'
  get 'public_sessions/destroy'
  get 'public_homes/top'
  get 'public_homes/about'
  get 'public_registrations/new'
  get 'public_registrations/create'
  get 'public_items/index'
  get 'public_items/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

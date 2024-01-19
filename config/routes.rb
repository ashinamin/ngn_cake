Rails.application.routes.draw do
  
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
  get 'admin_items/index'
  get 'admin_items/new'
  get 'admin_items/create'
  get 'admin_items/show'
  get 'admin_items/edit'
  get 'admin_items/update'
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

class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!
  
  def new
    @order = Order.new
    @addresses = currnet_customer.addresses.all
  end

  def confirm
    @order = Order.new(order_params)
    if params[:order][:address_option] == "0"
      @order.customer_postal_code = current_customer.postal_code
      @order.customer_address = current_customer.address
      @order.customer_name = current_customer.last_name + current_customer.first_name
    elsif params[:order][:address_option] == "1"
      order = Order.find(params[:order][:customer_id])
      @order.customer_postal_code = customer.post_code
      @order.customer_address = customer.address
      @order.customer_name = customer.ship.name
    elsif params[:order][:address_option] = "2"
      @order.customer_postal_code = params[:order][:customer_postal_code]
      @order.customer_address = params[:order][:customer_address]
      @order.customer_name = params[:order][:customer_name]
    else
      render 'new'
    end
    @cart_items = current_customer.cart_items.all
    @order.customer_id = current_customer.id
  end

  def thanks
  end

  def create
  end

  def index
    @order = Order.find(params[:id])
  end

  def show
    @order = Order.find(params[:id])
  end
  
  def order_params
    params.require(:order).permit(:postage, :payment_method, :customer_name, :customer_address, :customer_postal_code, :customer_id, :total_payment, :status)
  end
  
end

class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!

  def index
    # @cart_items = current_customer.cart_items
    @cart_items = CartItem.where(customer_id: current_customer.id)

  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.amount == nil
      redirect_to request.referer
    else
      @cart_item.save
      redirect_to cart_items_path
    end
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(cart_item_params)
    redirect_to request.referer
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to request.referer
  end

  def destroy_all
    @cart_items = CartItem.where(customer_id: current_customer.id)
    @cart_items.destroy_all
    redirect_to request.referer
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:customer_id, :item_id, :amount)
  end
end

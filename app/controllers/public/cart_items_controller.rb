class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!
  
  def index
    @cart_items = current_customer.cart_items
  end

  def update
  end

  def destroy
    @cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
    current_customer.cart_items.destroy_all
    redirect_to cart_items_path
  end

  def create
  end
  
  private
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end  
end

class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def show
    @order= Order.find(params[:id])
    @order_details= @order.order_details
  end

  def update
    @order= Order.find(params[:id])
    @order.update(order_params)
    @order_details= @order.order_details

    if @order.status == "payment_confirmation"
      @order_details.each do |order_detail|
        order_detail.update(making_status:  "waiting_for_production")
        # order_detail.save!
      end
    end
    redirect_to admin_order_path
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

end

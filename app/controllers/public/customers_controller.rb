class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end

  def ensure_correct_customer
    @customer = Customer.find(params[:id])
    unless @customer == current_customer
      redirect_to public_customer_path(current_customer)
    end
  end
end


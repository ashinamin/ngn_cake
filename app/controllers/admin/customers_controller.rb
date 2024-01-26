class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @customers= Customer.all
    @customers= Customer.page(params[:page]).per(10)
  end

  def show
    @customer= Customer.find(params[:id])
  end

  def edit
    @customer= Customer.find(params[:id])
  end

  def update
    customer= Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to admin_customers_path(customer)
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :address, :postcode, :phone_number, :is_active)
  end
  
end

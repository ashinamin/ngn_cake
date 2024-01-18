class Admin::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item = save
    redirect_to '/admin/show'
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    @item = update
    redirect_to '/admin/show'
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :image, :price_without_tax, :status, :genre)
  end
end

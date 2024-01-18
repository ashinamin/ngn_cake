class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @submit_label = '新規登録'
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item), notice: "You have created item successfully."
    else
      @item = Item.new
      render "new"
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    @submit_label = '変更を保存'
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(@item), notice: "You have updated item successfully."
    else
      render "edit"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :image, :price_without_tax, :status, :genre)
  end
end

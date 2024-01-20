class Admin::ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).per(10)
  end

  def new
    @item = Item.new
    @submit_label = '新規登録'
  end

  def create
    @item = Item.new(item_params)
    @item.genre = Genre.find(params[:item][:genre])
    if @item.save
      redirect_to admin_item_path(@item.id), notice: "You have created item successfully."
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
    params.require(:item).permit(:name, :introduction, :item_image, :price, :is_activ, :genre)
  end
end

class Public::HomesController < ApplicationController
  def top
    @new_items= Item.order(created_at: :desc).limit(4)
    @item= Item.find(params[:id])
    @genres= Genre.all
  end

  def about
  end
end

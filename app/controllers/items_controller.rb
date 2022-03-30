class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path, notice: 'Item Update'
    else
      render :edit
    end
  end

  def delete
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to items_path, notice: 'Item Deleted'
    else
      render :index
    end
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end

  def create
    item = Item.create(params.require(:item).permit(:name, :price))

    redirect_to items_path
  end
end

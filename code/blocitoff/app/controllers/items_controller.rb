class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
      @user = User.find(params[:user_id])
      @item = @user.items.new(item_params)
      @item.user = current_user
      @new_item = Item.new

      if @item.save
        flash[:notice] = "Item was saved."
      else
        flash.now[:alert] = "There was an error saving the item. Please try again."
      end

      respond_to do |format|
        format.html
        format.js
      end
    end

private
  def item_params
    params.require(:item).permit(:name)
  end

end

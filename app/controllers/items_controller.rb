class ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).reverse_order
    @user = current_user
  end

  def show
    begin
      @item = Item.find(params[:id])
      @item_comment = ItemComment.new
    rescue => e
      redirect_to root_path
    end
  end

  def edit
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to items_path
    else
    render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

    private
    def item_params
        params.require(:item).permit(:bike_name, :image, :content)
  end
end

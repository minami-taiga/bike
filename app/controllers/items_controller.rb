class ItemsController < ApplicationController
  def index
    @items = Item.all
    @user = current_user
  end

  def show
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

    private
    def item_params
        params.require(:item).permit(:bike_name, :image, :content)
  end
end

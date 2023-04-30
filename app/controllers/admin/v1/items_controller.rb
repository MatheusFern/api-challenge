module Admin::V1
  class ItemsController < ApiController
    def index
      @items = Item.all
      render json: @items
    end
    def create
      @item = Item.create(item_params)
      if @item.save
        render json: @item, status: :created
      else
        render json: @item.errors,status: :unprocessable_entity
      end
    end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
    end

    private

    def item_params
      puts params.inspect
      params.require(:item).permit(:title, :desc, :is_active)
    end



  end
end

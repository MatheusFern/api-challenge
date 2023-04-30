module Admin::V1
  class ItemsController < ApiController
    include Paginable

    def index
      @items = Item.sorted(params[:sort], params[:dir])
                   .page(current_page)
                   .per(per_page)
      render json: @items, meta: meta_attributes(@items),adapter: :json
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

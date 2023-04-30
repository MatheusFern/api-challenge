module Admin::V1
  class ItemsController < ApiController
    def index
      items = Item.all
      render items
    end
  end
end

class ItemsController < ApplicationController
    def index
      items = Item.all
      render json: items.map { |item| item_json(item) }
    end
  
    private
  
    def item_json(item)
      {
        id: item.id,
        name: item.name,
        description: item.description,
        price: item.price,
        user: {
          id: item.user.id,
          username: item.user.username,
          city: item.user.city
        }
      }
    end
  end
  
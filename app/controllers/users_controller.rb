class UsersController < ApplicationController
    def show
      user = User.find(params[:id])
      render json: {
        id: user.id,
        username: user.username,
        city: user.city,
        items: user.items.map { |item| item_json(item) }
      }
    end
  
    private
  
    def item_json(item)
      {
        id: item.id,
        name: item.name,
        description: item.description,
        price: item.price
      }
    end
end
  
class ItemsController < ApplicationController
  def index
  end




  private
  def item_params
    params.require(:item).permit(
      :name, :image, :description, :category_id, :condition_id,
      :shipping_cost_id, :shipping_area_id, :shipping_day_id, :price
    ).merge(user_id: current_user.id)
  end
end

class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item

  def index
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:postal_code, :shipping_area_id, :city, :address, :building, :phone_number)
          .merge(user_id: current_user.id, item_id: @item.id, token: params[:token])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end

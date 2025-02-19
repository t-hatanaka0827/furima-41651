class OrderAddress < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :shipping_area_id, :city, :address, :building, :phone_number, :token

  def save
  end
end

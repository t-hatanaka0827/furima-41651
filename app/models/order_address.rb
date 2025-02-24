class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :shipping_area_id, :city, :address, :building, :phone_number, :token

  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :postal_code, presence: true, format: { with: /\A\d{3}-\d{4}\z/}
  validates :shipping_area_id, presence: true, numericality: { other_than: 1, message: "can't be blank"}
  validates :city, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10,11}\z/}
  
  validates :token, presence: true

  def save
    purchase = Purchase.create(user_id: user_id, item_id: item_id)

    shipping_address = ShippingAddress.create(purchase_id: purchase.id, postal_code: postal_code, shipping_area_id: shipping_area_id, city: city, address: address, building: building, phone_number: phone_number)
  end
end

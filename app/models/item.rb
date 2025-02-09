class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one_attached :image

  belongs_to :category, class_name: 'CategoryId'
  belongs_to :condition, class_name: 'ConditionId'
  belongs_to :shipping_cost, class_name: 'ShippingCostId'
  belongs_to :shipping_area, class_name: 'ShippingAreaId'
  belongs_to :shipping_day, class_name: 'ShippingDayId'

  validates :image, presence: true

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  validates :category_id,      numericality: { other_than: 1, message: "can't be blank"}
  validates :condition_id,     numericality: { other_than: 1, message: "can't be blank"}
  validates :shipping_cost_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :shipping_area_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :shipping_day_id,  numericality: { other_than: 1, message: "can't be blank"}

  validates :price, numericality: { only_integer: true, message: "は半角数字で入力してください" }
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: "は¥300~¥9,999,999の間で入力してください" }
end

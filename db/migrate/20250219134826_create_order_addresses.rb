class CreateOrderAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :order_addresses do |t|

      t.timestamps
    end
  end
end

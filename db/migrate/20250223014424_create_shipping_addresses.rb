class CreateShippingAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :shipping_addresses do |t|
      t.references :purchase, null: false, foreign_key: true
      t.string :postal_code, null: false
      t.integer :shipping_area_id, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building
      t.string :phone_number, null: false

      t.timestamps
    end
  end
end

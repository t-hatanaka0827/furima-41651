class CreateShippingAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :shipping_addresses do |t|
      t.references :purchase, null: false, foreign_key: true
      t.string :postal_code
      t.integer :shipping_area_id
      t.string :city
      t.string :address
      t.string :building
      t.string :phone_number

      t.timestamps
    end
  end
end

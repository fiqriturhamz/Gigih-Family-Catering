class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.string :food_id
      t.string :order_id
      t.integer :quantity
      t.float :item_price
      t.timestamps
    end
  end
end

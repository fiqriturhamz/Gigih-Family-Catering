class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.float :total_price
      t.text :order_date
    

      t.timestamps
    end
  end
end

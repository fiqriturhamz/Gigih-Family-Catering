class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :total
      t.text :order_date

      t.timestamps
    end
  end
end

class CreatePesanans < ActiveRecord::Migration[7.0]
  def change
    create_table :pesanans do |t|
      t.integer :total
      t.text :order_date

      t.timestamps
    end
  end
end

class CreateOrderPositions < ActiveRecord::Migration
  def change
    create_table :order_positions do |t|
      t.integer :ordinal
      t.integer :amount
      t.boolean :completed
      t.integer :price
      t.references :order
      t.references :issue

      t.timestamps
    end
  end
end

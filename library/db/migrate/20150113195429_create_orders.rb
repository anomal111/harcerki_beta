class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :paid
      t.datetime :deadline
      t.string :status
      t.datetime :created_at
      t.references :coordinator
      t.timestamps
    end
  end
end

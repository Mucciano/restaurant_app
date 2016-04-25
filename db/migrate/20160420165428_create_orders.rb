class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer
      t.references :item

      t.timestamps null: false
    end
  end
end

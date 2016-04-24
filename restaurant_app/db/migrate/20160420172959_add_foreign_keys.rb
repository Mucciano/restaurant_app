class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :orders, :customers
    add_foreign_key :orders, :items
    add_foreign_key :parties, :users
    add_foreign_key :customers, :parties

  end
end

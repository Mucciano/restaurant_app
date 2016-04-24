class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :dietary_rest

      t.timestamps null: false
    end
  end
end

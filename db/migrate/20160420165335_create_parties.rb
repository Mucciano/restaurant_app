class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :reservation_name
      t.string :size
      t.string :table
      t.references :user

      t.timestamps null: false
    end
  end
end

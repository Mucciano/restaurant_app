class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer     :seat_number
      t.string      :allergy
      t.references  :party

      t.timestamps null: false
    end
  end
end

class Changeorders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.remove_references :customer
      t.references :party
    end

  end
end

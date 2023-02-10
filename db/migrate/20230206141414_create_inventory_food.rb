class CreateInventoryFood < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_foods do |t|
      t.bigint :inventory_id
      t.bigint :food_id
      t.integer :quantity
      t.timestamps
    end
  end
end

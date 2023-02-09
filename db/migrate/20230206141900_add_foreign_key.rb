class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    # add_reference :inventories, :user, null: false, foreign_key: true
    # add_reference :recipes, :user, null: false, foreign_key: true
    # add_reference :inventory_foods, :inventory, null: false, foreign_key: true
    # add_reference :inventory_foods, :food, null: false, foreign_key: true
    # add_reference :recipe_foods, :food, null: false, foreign_key: true
    # add_reference :recipe_foods, :recipe, null: false, foreign_key: true

    add_foreign_key :inventories, :users, column: :user_id, on_delete: :cascade
    add_foreign_key :recipes, :users, column: :user_id, on_delete: :cascade
    add_foreign_key :inventory_foods, :inventories, column: :inventory_id, on_delete: :cascade
    add_foreign_key :inventory_foods, :foods, column: :food_id, on_delete: :cascade
    add_foreign_key :recipe_foods, :foods, column: :food_id, on_delete: :cascade
    add_foreign_key :recipe_foods, :recipes, column: :recipe_id, on_delete: :cascade

  end
end

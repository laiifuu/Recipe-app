class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.bigint :user_id
      t.text :description
      t.integer :preparation_time
      t.integer :cooking_time
      t.boolean :public
      t.timestamps
    end
  end
end

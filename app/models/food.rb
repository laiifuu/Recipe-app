class Food < ApplicationRecord
  has_many :inventory_food, foreign_key: 'food_id', dependent: :delete_all
  # has_many :recipe_foods
  has_many :recipe_foods, foreign_key: 'food_id', dependent: :delete_all
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
  validates :price, presence: true
end

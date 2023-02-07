class Food < ApplicationRecord
  has_many :inventory_food, foreign_key: 'food_id', dependent: :delete_all
  has_many :recipe_foods, foreign_key: 'food_id', dependent: :delete_all

  validates :name, presence: true
  validates :price, presence: true
end

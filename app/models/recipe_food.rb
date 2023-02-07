class RecipeFood < ApplicationRecord
<<<<<<< HEAD
  belongs_to :recipe
  belongs_to :food, foreign_key: 'food_id'
=======
  belongs_to :inventory
  belongs_to :food
>>>>>>> dev
end

class Recipe < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, foreign_key: 'user_id'
  has_many :recipe_foods, foreign_key: 'recipe_id'
=======
  belongs_to :user
>>>>>>> dev
end

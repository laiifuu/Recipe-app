class Inventory < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, foreign_key: 'user_id'
  has_many :inventory_foods, foreign_key: 'inventory_id'
=======
  belongs_to :user
  has_many :inventory_food
>>>>>>> dev
end

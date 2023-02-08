class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_food
  has_many :foods, through: :recipe_foods

  def total_price
    record = Food.joins(:recipe_foods).select('sum(price*quantity) as total').group(:recipe_id).having('recipe_id = ?',
                                                                                                       id)
    if record.any?
      record[0].total
    else
      0
    end
  end
end

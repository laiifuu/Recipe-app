class ShoppingListController < ApplicationController
  def index
    @final = []

    @food_of_inventory = InventoryFood.includes(:food).where(inventory_id: params[:inventory_id])
    @food_of_recipe = RecipeFood.includes(:food).where(recipe_id: params[:recipe_id])

    @food_of_recipe.each do |food1|
      k = 0
      @food_of_inventory.each do |food2|
        next unless food1.food.name == food2.food.name

        k = 1
        if food2.quantity < food1.quantity
          final_quantity = food1.quantity - food2.quantity
          @final << { name: food2.food.name, quantity: final_quantity, price: food2.food.price }
        end
      end
      @final << { name: food1.food.name, quantity: food1.quantity, price: food1.food.price } if k.zero?
    end
  end
end

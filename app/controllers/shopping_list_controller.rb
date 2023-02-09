class ShoppingListController < ApplicationController
    def index
        @arr1 = []
        @arr2 = []
        @arr3 = []

        @food_of_recipe = RecipeFood.includes(:food).where(recipe_id: params[:recipe_id])
        @food_of_recipe.each do |food|
            @arr2 << {name: food.food.name, quantity: food.quantity, price: food.food.price, original_id: food.food.id}
        end

        @food_of_inventory = InventoryFood.includes(:food).where(inventory_id: params[:inventory_id])
        @food_of_inventory.each do |food|
            @arr1 << {name: food.food.name, quantity: food.quantity, price: food.food.price, original_id: food.food.id}
        end

        @arr1.each do |item1|
            @arr2.each do |item2|
                if item1[:name] == item2[:name]
                    if item1[:quantity] >= item2[:quantity]
                        @arr1.delete(item1)
                        @arr2.delete(item1)
                    else
                        final_quantity = item2[:quantity] - item1[:quantity]
                        @arr2 << {name: item1[:name], quantity: final_quantity, price: item1[:price], original_id: item1[:id]}
                        @arr1.delete(item1)
                        @arr2.delete(item2)
                    end
                end
            end
        end

        @total = 0
        @arr2.each do |item3|
            @total += item3[:quantity] * item3[:price]
        end


    end
end

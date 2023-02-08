class FoodsController < ApplicationController
  def index
    @user = current_user
    @display_data = []
    @user.inventories.includes(:inventory_food).each do |inventory|
      inventory.inventory_food.includes(:food).each do |el|
        @display_data << el.food
      end
    end
    @user.recipes.includes(:recipe_foods).each do |recipe|
      recipe.recipe_foods.includes(:food).each do |el|
        @display_data << el.food unless @display_data.include? el.food
      end
    end
  end

  def new
    @food = Food.new
    @inventories = Inventory.where(user_id: current_user)
    @recipes = Recipe.where(user_id: current_user)
  end

  def create
    data = params[:food]
    new_food = Food.new(name: data[:name], measurement_unit: data[:measurement_unit], price: data[:price])
    if new_food.save && new_food.id?
      RecipeFood.create(quantity: data[:recipe_quantity], recipe_id: data[:recipe_id], food_id: new_food.id)
      InventoryFood.create(quantity: data[:inventory_quantity], inventory_id: data[:inventory_id], food_id: new_food.id)
      flash[:success] = 'Food has been added'
      redirect_to foods_path
    else
      flash.now[:error] = 'Food could not be added'
      render new_food_path
    end
  end

  def destroy
    id = params[:id]
    @post = Food.find(id)
    if @post.destroy
      flash[:success] = 'Post_destroyed'
    else
      flash.now[:error] = 'Post could not be destroyed'
    end
    redirect_to request.original_url
  end
end

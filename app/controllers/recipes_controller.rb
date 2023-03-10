class RecipesController < ApplicationController
  def index
    @user = current_user
    @recipes = @user.recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    @foods = RecipeFood
      .joins(:food)
      .select('foods.id as food_id, name as food_name, quantity, price, quantity * price as value, recipe_id')
      .where(recipe_id: params[:id])
    @inventories = Inventory.where(user: current_user)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.new(recipe_params)
    recipe.user = current_user
    if recipe.save
      flash[:success] = 'New recipe created.'
      redirect_to recipes_path
    else
      redirect_to new_recipe_path
    end
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time, :public)
  end
end

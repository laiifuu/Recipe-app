class RecipesController < ApplicationController
  def index 
    @user = current_user
    @recipes = @user.recipes #I dont know how to add the n+1 thingy x) 
  end

  def show 
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.new(recipe_params)
    recipe.user = current_user
    if recipe.save
      flash[:success] = "New recipe created."
      redirect_to recipes_path
    else 
      render :new
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

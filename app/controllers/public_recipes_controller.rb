class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.includes(:user, :foods, :recipe_foods).where(public: true).order('created_at DESC')
  end
end

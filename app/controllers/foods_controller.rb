class FoodsController < ApplicationController
  def index
    @user = current_user
    # @user = User.includes(:inventories, inventories: [:inventory_foods]).find(current_user.id)
    # @food = Food.where(id: @user.inventories.inventory_foods.food_id)
    # @inventories = @user.inventories
    # @foods = []
    # @user.inventories.includes(:inventory_foods).each do |inventory|
    #   inventory.inventory_foods.includes(:food).each do |intfood|
    #     @foods.push(intfood.food)
    #   end
    # end
    # @inventories.each do |inventory|

    # end
  end

  def new
    @food = Food.new
  end

  def create
    data = params[:food]
    new_food = Food.new(name: data[:name], measurement_unit: data[:measurement_unit], price: data[:price])
    if new_food.save
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
    redirect_to foods_path
  end
end

class InventoriesController < ApplicationController
  def index
    @user = current_user
    @inventories = Inventory.where(user_id: current_user)
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def new
    @inventory = Inventory.new
  end

  def edit; end

  def create
    @inventory = Inventory.create(name: params[:name], user_id: current_user.id)
    redirect_to inventories_path
  end

  def destroy
    Inventory.delete(params[:id])
    redirect_to inventories_path
  end
end

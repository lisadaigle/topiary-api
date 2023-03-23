class CartedPlantsController < ApplicationController
  def index
    @carted_plants = CartedPlant.all
    render :index
  end

  def create
    @carted_plant = CartedPlant.create(
      id: params[:id],
      name: params[:name],
      description: params[:description],
      amount_of_sun: params[:amount_of_sun],
      days_to_water: params[:days_to_water],
      user_id: params[:user_id],
    )
    render :show
  end
end

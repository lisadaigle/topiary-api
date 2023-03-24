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

  def watering_schedule
    last_watered = params[:last_watered]
    last_watered_date = last_watered == "today" ? Date.today : Date.yesterday
    schedule = CartedPlant.all.map do |plant|
      next_watering_date = last_watered_date + plant.days_to_water.days
      formatted_next_watering_date = next_watering_date.strftime("%B %d, %Y")
      [plant.id, "The #{plant.name} needs to be watered on #{formatted_next_watering_date}."]
    end.to_h
    render json: schedule
  end
end

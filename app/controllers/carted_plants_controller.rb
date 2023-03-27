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
      image_url: params[:image_url],
    )
    render :show
  end

  def watering_schedule
    plant_id = params[:plant_id]
    last_watered = params[:last_watered]
    last_watered_date = last_watered == "today" ? Date.today : Date.yesterday

    puts "Last watered date: #{last_watered_date}" ##this is new
    puts "Current timezone: #{Time.zone}" ##this is new

    plant = CartedPlant.find(plant_id)
    next_watering_date = last_watered_date + plant.days_to_water.days
    formatted_next_watering_date = next_watering_date.strftime("%B %d, %Y")
    schedule = "The #{plant.name} needs to be watered on #{formatted_next_watering_date}."

    render json: { plant_id => schedule }
  end
end

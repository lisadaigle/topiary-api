class UserPlantsController < ApplicationController
  def create
    @user_plant = UserPlant.create(
      id: params[:id],
      user_id: params[:user_id],
      plant_id: params[:plant_id],
      nickname: params[:nickname],
    )
    render :show
  end

  def index
    @user_plants = UserPlant.all
    render :index
  end
end

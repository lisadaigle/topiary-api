class UserPlantsController < ApplicationController
  def create
    @user_plant = UserPlant.create(
      user_id: params[:user_id],
      plant_id: params[:plant_id],
      nickname: params[:nickname],
    )

    render :show
  end
end

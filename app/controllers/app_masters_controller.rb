class AppMastersController < ApplicationController

  def index
    @appmaster = AppMaster.all
    render json: @appmaster
  end

  def create
    @appmaster = AppMaster.new(appmaster_params)
    if @appmaster.save
      render json: @appmaster
    else
      render json: @appmaster.errors, status: :unprocessable_entity
    end
  end

  private

  def appmaster_params
    params.permit(:user_id,:app_name)
  end
end

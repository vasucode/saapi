class AppMastersController < ApplicationController

  def index
    @appmasters = AppMaster.all
    render json: @appmasters
  end

  def show
    @appmaster = AppMaster.find(params[:id])
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

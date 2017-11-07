class AppCallsController < ApplicationController

  def index
    @appcalls = AppCall.all
    render json: @appcalls
  end

  def show
    @appcall = AppCall.find(params[:id])
    render json: @appcall
  end

  def create
    @appcall = AppCall.new(appcall_params)
    if @appcall.save
      render json: @appcall
    else
      render json: @appcall.errors, status: :unprocessable_entity
    end
  end

  private

  def appcall_params
    params.permit(:app_master_id, :call_object)
  end
end

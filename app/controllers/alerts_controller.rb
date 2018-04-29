class AlertsController < ApplicationController

  # GET /alerts
  def index
    @alerts = Alert.all

    render json: @alerts
  end

  # POST /alerts
  def create
    @alert = Alert.new(alert_params)

    if @alert.save
      render json: @alert, status: :created, location: @alert
    else
      render json: @alert.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def alert_params
    params.require(:alert).permit(:latitude, :longitude)
  end
end

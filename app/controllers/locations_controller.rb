class LocationsController < ApplicationController
  before_action :set_location, only: :show

  # GET /locations
  def index
    @locations = User.all

    render json: @locations
  end

  # GET /locations/1
  def show
    render json: @location
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_location
    @location = Location.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def location_params
    params.require(:location).permit(:latitude, :longitude, :address, :user_id)
  end
end

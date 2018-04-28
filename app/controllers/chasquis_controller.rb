class ChasquisController < ApplicationController
  before_action :set_chasqui, only: %i[show update destroy]

  # GET /chasquis
  def index
    @chasquis = Chasqui.all

    render json: @chasquis
  end

  # GET /chasquis/1
  def show
    render json: @chasqui
  end

  # POST /chasquis
  def create
    @chasqui = Chasqui.new(chasqui_params)

    if @chasqui.save
      render json: @chasqui, status: :created, location: @chasqui
    else
      render json: @chasqui.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chasquis/1
  def update
    if @chasqui.update(chasqui_params)
      render json: @chasqui
    else
      render json: @chasqui.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chasquis/1
  def destroy
    @chasqui.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chasqui
    @chasqui = Chasqui.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def chasqui_params
    params.require(:chasqui).permit(:email, :name, :phone)
  end
end

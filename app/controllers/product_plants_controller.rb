class ProductPlantsController < ApplicationController
  before_action :set_product_plant, only: [:show, :update, :destroy]

  # GET /product_plants
  def index
    @product_plants = ProductPlant.all

    render json: @product_plants
  end

  # GET /product_plants/1
  def show
    render json: @product_plant
  end

  # POST /product_plants
  def create
    @product_plant = ProductPlant.new(product_plant_params)

    if @product_plant.save
      render json: @product_plant, status: :created, location: @product_plant
    else
      render json: @product_plant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_plants/1
  def update
    if @product_plant.update(product_plant_params)
      render json: @product_plant
    else
      render json: @product_plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_plants/1
  def destroy
    @product_plant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_plant
      @product_plant = ProductPlant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_plant_params
      params.require(:product_plant).permit(:product_id, :plant_id, :deleted_at)
    end
end

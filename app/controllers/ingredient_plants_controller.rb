class IngredientPlantsController < ApplicationController
  before_action :set_ingredient_plant, only: [:show, :update, :destroy]

  # GET /ingredient_plants
  def index
    @ingredient_plants = IngredientPlant.all

    render json: @ingredient_plants
  end

  # GET /ingredient_plants/1
  def show
    render json: @ingredient_plant
  end

  # POST /ingredient_plants
  def create
    @ingredient_plant = IngredientPlant.new(ingredient_plant_params)

    if @ingredient_plant.save
      render json: @ingredient_plant, status: :created, location: @ingredient_plant
    else
      render json: @ingredient_plant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredient_plants/1
  def update
    if @ingredient_plant.update(ingredient_plant_params)
      render json: @ingredient_plant
    else
      render json: @ingredient_plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredient_plants/1
  def destroy
    @ingredient_plant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_plant
      @ingredient_plant = IngredientPlant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_plant_params
      params.require(:ingredient_plant).permit(:ingredient_id, :plant_id, :deleted_at)
    end
end

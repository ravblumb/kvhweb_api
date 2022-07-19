class InspectionIngredientsController < ApplicationController
  before_action :set_inspection_ingredient, only: [:show, :update, :destroy]

  # GET /inspection_ingredients
  def index
    @inspection_ingredients = InspectionIngredient.all

    render json: @inspection_ingredients
  end

  # GET /inspection_ingredients/1
  def show
    render json: @inspection_ingredient
  end

  # POST /inspection_ingredients
  def create
    @inspection_ingredient = InspectionIngredient.new(inspection_ingredient_params)

    if @inspection_ingredient.save
      render json: @inspection_ingredient, status: :created, location: @inspection_ingredient
    else
      render json: @inspection_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspection_ingredients/1
  def update
    if @inspection_ingredient.update(inspection_ingredient_params)
      render json: @inspection_ingredient
    else
      render json: @inspection_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspection_ingredients/1
  def destroy
    @inspection_ingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection_ingredient
      @inspection_ingredient = InspectionIngredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspection_ingredient_params
      params.require(:inspection_ingredient).permit(:inspection_id, :ingredient_id, :ingredient_report, :issue_id)
    end
end

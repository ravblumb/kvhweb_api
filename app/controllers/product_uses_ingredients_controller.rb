class ProductUsesIngredientsController < ApplicationController
  before_action :set_product_uses_ingredient, only: [:show, :update, :destroy]

  # GET /product_uses_ingredients
  def index
    @product_uses_ingredients = ProductUsesIngredient.all

    render json: @product_uses_ingredients
  end

  # GET /product_uses_ingredients/1
  def show
    render json: @product_uses_ingredient
  end

  # POST /product_uses_ingredients
  def create
    @product_uses_ingredient = ProductUsesIngredient.new(product_uses_ingredient_params)

    if @product_uses_ingredient.save
      render json: @product_uses_ingredient, status: :created, location: @product_uses_ingredient
    else
      render json: @product_uses_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_uses_ingredients/1
  def update
    if @product_uses_ingredient.update(product_uses_ingredient_params)
      render json: @product_uses_ingredient
    else
      render json: @product_uses_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_uses_ingredients/1
  def destroy
    @product_uses_ingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_uses_ingredient
      @product_uses_ingredient = ProductUsesIngredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_uses_ingredient_params
      params.require(:product_uses_ingredient).permit(:product_id, :ingredient_id, :deleted_at)
    end
end

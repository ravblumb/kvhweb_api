class ProductIsIngredientsController < ApplicationController
  before_action :set_product_is_ingredient, only: [:show, :update, :destroy]

  # GET /product_is_ingredients
  def index
    @product_is_ingredients = ProductIsIngredient.all

    render json: @product_is_ingredients
  end

  # GET /product_is_ingredients/1
  def show
    render json: @product_is_ingredient
  end

  # POST /product_is_ingredients
  def create
    @product_is_ingredient = ProductIsIngredient.new(product_is_ingredient_params)

    if @product_is_ingredient.save
      render json: @product_is_ingredient, status: :created, location: @product_is_ingredient
    else
      render json: @product_is_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_is_ingredients/1
  def update
    if @product_is_ingredient.update(product_is_ingredient_params)
      render json: @product_is_ingredient
    else
      render json: @product_is_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_is_ingredients/1
  def destroy
    @product_is_ingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_is_ingredient
      @product_is_ingredient = ProductIsIngredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_is_ingredient_params
      params.require(:product_is_ingredient).permit(:product_id, :ingredient_id, :deleted_at)
    end
end

class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :update, :destroy]

  # GET /ingredients
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  # GET /ingredients/1
  def show
    render json: @ingredient
  end

  # POST /ingredients
  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  def update
    if @ingredient.update(ingredient_params)
      render json: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :generic_name, :comments, :code, :company_id, :is_dairy, :is_dairy_equipment, :is_meat, :is_fish, :is_passover, :kosher_status, :deleted_at, :ingredient_group_id, :previous_id, :effective_until, :created_by_id,
:updated_by_id, :kosher_compact_denorm, :notebook_id, :state, :state_time, :red_flag_item, :last_reviewed_at, :state_changed_by_id, :previous_state, :previous_state_time, :previous_state_changed_by_id, :has_product_change, :material_hauled)
    end
end

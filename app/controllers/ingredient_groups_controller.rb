class IngredientGroupsController < ApplicationController
  before_action :set_ingredient_group, only: [:show, :update, :destroy]

  # GET /ingredient_groups
  def index
    @ingredient_groups = IngredientGroup.all

    render json: @ingredient_groups
  end

  # GET /ingredient_groups/1
  def show
    render json: @ingredient_group
  end

  # POST /ingredient_groups
  def create
    @ingredient_group = IngredientGroup.new(ingredient_group_params)

    if @ingredient_group.save
      render json: @ingredient_group, status: :created, location: @ingredient_group
    else
      render json: @ingredient_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredient_groups/1
  def update
    if @ingredient_group.update(ingredient_group_params)
      render json: @ingredient_group
    else
      render json: @ingredient_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredient_groups/1
  def destroy
    @ingredient_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_group
      @ingredient_group = IngredientGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_group_params
      params.require(:ingredient_group).permit(:name, :company_id, :deleted_at, :created_by_id, :updated_by_id)
    end
end

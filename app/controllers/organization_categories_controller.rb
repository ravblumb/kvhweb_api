class OrganizationCategoriesController < ApplicationController
  before_action :set_organization_category, only: [:show, :update, :destroy]

  # GET /organization_categories
  def index
    @organization_categories = OrganizationCategory.all

    render json: @organization_categories
  end

  # GET /organization_categories/1
  def show
    render json: @organization_category
  end

  # POST /organization_categories
  def create
    @organization_category = OrganizationCategory.new(organization_category_params)

    if @organization_category.save
      render json: @organization_category, status: :created, location: @organization_category
    else
      render json: @organization_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organization_categories/1
  def update
    if @organization_category.update(organization_category_params)
      render json: @organization_category
    else
      render json: @organization_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organization_categories/1
  def destroy
    @organization_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_category
      @organization_category = OrganizationCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_category_params
      params.require(:organization_category).permit(:code, :name, :comments, :commercial_above, :commercial_below, :retail_above, :retail_below, :created_by_id, :updated_by_id, :deleted_at, :is_industrial, :is_food_service)
    end
end

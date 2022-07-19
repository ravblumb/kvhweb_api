class OrganizationOrganizationCategoriesController < ApplicationController
  before_action :set_organization_organization_category, only: [:show, :update, :destroy]

  # GET /organization_organization_categories
  def index
    @organization_organization_categories = OrganizationOrganizationCategory.all

    render json: @organization_organization_categories
  end

  # GET /organization_organization_categories/1
  def show
    render json: @organization_organization_category
  end

  # POST /organization_organization_categories
  def create
    @organization_organization_category = OrganizationOrganizationCategory.new(organization_organization_category_params)

    if @organization_organization_category.save
      render json: @organization_organization_category, status: :created, location: @organization_organization_category
    else
      render json: @organization_organization_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organization_organization_categories/1
  def update
    if @organization_organization_category.update(organization_organization_category_params)
      render json: @organization_organization_category
    else
      render json: @organization_organization_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organization_organization_categories/1
  def destroy
    @organization_organization_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_organization_category
      @organization_organization_category = OrganizationOrganizationCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_organization_category_params
      params.require(:organization_organization_category).permit(:organization_id, :organization_category_id, :deleted_at)
    end
end

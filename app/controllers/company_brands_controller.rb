class CompanyBrandsController < ApplicationController
  before_action :set_company_brand, only: [:show, :update, :destroy]

  # GET /company_brands
  def index
    @company_brands = CompanyBrand.all

    render json: @company_brands
  end

  # GET /company_brands/1
  def show
    render json: @company_brand
  end

  # POST /company_brands
  def create
    @company_brand = CompanyBrand.new(company_brand_params)

    if @company_brand.save
      render json: @company_brand, status: :created, location: @company_brand
    else
      render json: @company_brand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /company_brands/1
  def update
    if @company_brand.update(company_brand_params)
      render json: @company_brand
    else
      render json: @company_brand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /company_brands/1
  def destroy
    @company_brand.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_brand
      @company_brand = CompanyBrand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_brand_params
      params.require(:company_brand).permit(:company_id, :brand_id, :deleted_at)
    end
end

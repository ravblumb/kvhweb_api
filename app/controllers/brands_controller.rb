class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :update, :destroy]

  # GET /brands
  def index
    @brands = Brand.all

    render json: @brands
  end

  # GET /brands/1
  def show
    render json: @brand
  end

  # POST /brands
  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      render json: @brand, status: :created, location: @brand
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brands/1
  def update
    if @brand.update(brand_params)
      render json: @brand
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brands/1
  def destroy
    @brand.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brand_params
      params.require(:brand).permit(:name, :producer_id, :data_source, :deleted_at, :created_by_id, :updated_by_id, :loc_comments, :show_loc_comment_on_web, :hide_from_web)
    end
end

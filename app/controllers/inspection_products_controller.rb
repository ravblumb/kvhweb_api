class InspectionProductsController < ApplicationController
  before_action :set_inspection_product, only: [:show, :update, :destroy]

  # GET /inspection_products
  def index
    @inspection_products = InspectionProduct.all

    render json: @inspection_products
  end

  # GET /inspection_products/1
  def show
    render json: @inspection_product
  end

  # POST /inspection_products
  def create
    @inspection_product = InspectionProduct.new(inspection_product_params)

    if @inspection_product.save
      render json: @inspection_product, status: :created, location: @inspection_product
    else
      render json: @inspection_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspection_products/1
  def update
    if @inspection_product.update(inspection_product_params)
      render json: @inspection_product
    else
      render json: @inspection_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inspection_products/1
  def destroy
    @inspection_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection_product
      @inspection_product = InspectionProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspection_product_params
      params.require(:inspection_product).permit(:inspection_id, :product_id, :product_report, :issue_id)
    end
end
